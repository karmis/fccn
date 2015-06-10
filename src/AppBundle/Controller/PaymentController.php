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
use Symfony\Component\Config\Definition\Exception\Exception;
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
        $answer = array();
        $data = $request->request;
        if($data->get('payment_type') == 'payment_phis' || $data->get('payment_type') == 'phis_reciept'){
            $entity = $this->bindPhisPayment($data, $entity);
            if($data->get('with_reciept') == 1){
                $entity->setIsReciept(true);
                $html = $this->createPhisReceipt($entity);
            } else {
                $entity->setIsReciept(false);
            }
        } elseif($data->get('payment_type') == 'payment_jur') {
            $entity = $this->bindJurPayment($data, $entity);
            $entity->setIsReciept(true);
            $html = $this->createJurReceipt($entity);
        } else {
            throw new Exception('Payment method not found',1);
        }
        $form = $this->createCreateForm($entity);
        $em = $this->getDoctrine()->getManager();
        $em->persist($entity);
        $em->flush();

        $answer['status'] = 'ok';
        if(isset($html)){
            $uri = $this->createReceipt($html);
            $answer['uri'] = $uri;
        }

        return new JsonResponse($answer);
    }

    private function createReceipt($html)
    {
        $name = uniqid() .'.pdf';
        $uri = $this->get('router')->generate('receipt_download', array(
            'filename' => $name
        ));
        $path = $this->get('kernel')->getRootDir() . '/../web/uploads/documents/receipts/'.$name;
        $this->get('knp_snappy.pdf')->generateFromHtml($html, $path);

        return $uri;
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

    private function createPhisReceipt($entity)
    {
        $html = $this->renderView('AppBundle:Documents/Receipts:phis.html.twig', array(
            'entity'  => $entity
        ));

        return $html;
    }

    private function createJurReceipt($entity)
    {
        $html = $this->renderView('AppBundle:Documents/Receipts:jur.html.twig', array(
            'entity'  => $entity
        ));

        return $html;
    }

    private function bindPhisPayment($data, $entity)
    {
        $entity->setType($data->get('payment_type'));
        $entity->setFio($data->get('fio_phis'));
        $entity->setEmail($data->get('email_phis'));
        $entity->setPhone($data->get('tel_phis'));
        $entity->setSumm($data->get('amount_phis'));
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

    private function bindJurPayment($data, $entity)
    {
        $entity->setType($data->get('payment_type'));
        $entity->setFio($data->get('fio_jur'));
        $entity->setEmail(0);
        $entity->setPhone($data->get('tel_jur'));
        $entity->setSumm($data->get('amount_jur'));
        $entity->setOrganization($data->get('organization'));
        $entity->setInn($data->get('inn'));
        $entity->setRs($data->get('pc'));
        $entity->setKpp($data->get('kpp'));
        $entity->setOgrn($data->get('ogrn'));
        $entity->setLegalAddress($data->get('legalAddress'));
        $entity->setMailAddress($data->get('mailAddress'));
        $entity->setBik($data->get('bik'));
        $entity->setEmail($data->get('email_jur'));
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