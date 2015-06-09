<?php
/**
 * Created by PhpStorm.
 * User: karmis
 * Date: 17.05.15
 * Time: 23:04
 */

namespace AppBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use AdminBundle\Entity\Payment;
use AdminBundle\Form\PaymentType;

/**
 * Service controller.
 *
 * @Route("/payment")
 */
class PaymentController extends Controller {
    
    /**
     * Обработка запроса на оплату
     *
     * @Route("/action", name="payment_action")
     * @Method("POST")
     */
    public function paymentAction(Request $request)
    {
        $entity = new Payment();

        $data = $request->request;
        if($data->get('payment_type') == 'individual'){
            $entity = $this->bindIndividual($data, $entity);
        } elseif($data->get('payment_type') == 'legal') {
            $entity = $this->bindLegal($data, $entity);
        }
        $form = $this->createCreateForm($entity);
        $entity->setReport('none');
        $em = $this->getDoctrine()->getManager();
        $em->persist($entity);
        $em->flush();

        return new JsonResponse(array('ok'));
    }

    /**
     * Обработка запроса на получение квитанции
     *
     * @Route("/recaipt", name="receipt_action")
     * @Method("POST")
     */
    public function getReceiptAction(Request $request)
    {

        $entity = new Payment();
        $data = $request->request;
        $html = "";
        if($data->get('payment_type') == 'individual'){
            $entity = $this->bindIndividual($data, $entity);
            $html = $this->createIndividualReceipt($entity);
        } elseif($data->get('payment_type') == 'legal') {
            $entity = $this->bindLegal($data, $entity);
            $html = $this->createLegalReceipt($entity);
        }

        $name = uniqid() .'.pdf';
        $uri = $this->get('router')->generate('receipt_download', array(
            'filename' => $name
        ));
        $path = $this->get('kernel')->getRootDir() . '/../web/uploads/documents/receipts/'.$name;
        $this->get('knp_snappy.pdf')->generateFromHtml($html, $path);

        $entity->setReport($name);
        $form = $this->createCreateForm($entity);
        $em = $this->getDoctrine()->getManager();
        $em->persist($entity);
        $em->flush();

        return new JsonResponse(array('uri'=> $uri));
    }

    /**
     * @Route("/download_file/{filename}", name="receipt_download")
     */
    public function downloadAction($filename)
    {
        $filename = $this->get('kernel')->getRootDir() . '/../web/uploads/documents/receipts/'.$filename;
        $response = new Response();
        $response->headers->set('Content-Type', mime_content_type($filename));
        $response->headers->set('Content-Disposition', 'attachment; filename="' . basename($filename) . '"');
        $response->headers->set('Content-Length', filesize($filename));
        $response->headers->set('Pragma', "no-cache");
        $response->headers->set('Expires', "0");
        $response->headers->set('Content-Transfer-Encoding', "binary");

        $response->sendHeaders();

        $response->setContent(readfile($filename));

        return $response; 
    }

    private function createIndividualReceipt($entity)
    {
        $html = $this->renderView('AppBundle:Documents/Receipts:individual.html.twig', array(
            'entity'  => $entity
        ));

        return $html;
    }

    private function createLegalReceipt($entity)
    {
        $html = $this->renderView('AppBundle:Documents/Receipts:legal.html.twig', array(
            'entity'  => $entity
        ));

        return $html;
    }

    private function bindIndividual($data, $entity)
    {
        $entity->setType($data->get('payment_type'));
        $entity->setFio($data->get('fio'));
        $entity->setEmail($data->get('email'));
        $entity->setPhone($data->get('tel'));
        $entity->setSumm($data->get('MNT_AMOUNT'));
        $entity->setOrganization(0);
        $entity->setInn(0);
        $entity->setRs(0);
        $entity->setKpp(0);
        $entity->setOgrn(0);
        $entity->setLegalAddress(0);
        $entity->setMailAddress(0);
        $entity->setBik(0);
        $entity->setBasis(0);

        return $entity;
    }

    private function bindLegal($data, $entity)
    {
        $entity->setType($data->get('payment_type'));
        $entity->setFio($data->get('fio'));
        $entity->setEmail(0);
        $entity->setPhone(0);
        $entity->setSumm($data->get('MNT_AMOUNT'));
        $entity->setOrganization($data->get('organization'));
        $entity->setInn($data->get('inn'));
        $entity->setRs($data->get('pc'));
        $entity->setKpp($data->get('kpp'));
        $entity->setOgrn($data->get('ogrn'));
        $entity->setLegalAddress($data->get('legalAddress'));
        $entity->setMailAddress($data->get('mailAddress'));
        $entity->setBik($data->get('bik'));
        $entity->setBasis($data->get('basis'));

        return $entity;
    }

    /**
     * Creates a form to create a Payment entity.
     *
     * @param Payment $entity The entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createCreateForm(Payment $entity)
    {
        $form = $this->createForm(new PaymentType(), $entity, array(
            'action' => $this->generateUrl('payment_create'),
            'method' => 'POST',
        ));

        return $form;
    }
}