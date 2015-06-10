<?php
/**
 * Created by PhpStorm.
 * User: karmis
 * Date: 04.05.15
 * Time: 6:07
 */

namespace AppBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\JsonResponse;

/**
 * Feed controller.
 *
 * @Route("/feed")
 * @Method("POST")
 */
class FeedController extends Controller
{
    /**
     * Заказ из калькулятора
     *
     * @Route("/orderFromCalc", name="feed_calc_order")
     * @Method("POST")
     */
    public function calcOrderAction(Request $request)
    {
        $subject = "Заказ из калькулятора";
        $name = $request->request->get('name');
        $tel = $request->request->get('tel');
        $email = $request->request->get('email');
        $siteName = $request->request->get('site_type_name');
        $salePromotion = $request->request->get('checkbox_skidka');
        $ref = $request->request->get('ref');
        $price = $request->request->get('price');
        if (isset($salePromotion)) {
            $salePromotionText = 'С продвижением';
        } else {
            $salePromotionText = 'Без продвижения';
        }
        $design = $request->request->get('dizayn');

        switch ($design) {
            case 'gotoviy':
                $designText = 'Готовый дизайн';
                break;

            case 'individualniy':
                $designText = 'Индивидуальный дизайн';
                break;

            default:
                $designText = $design;
                break;
        }

        $template = $this->renderView(
            'AppBundle:Email:orderFromCalc.html.twig',
            array(
                'price' => $price,
                'subject' => $subject,
                'ref' => $ref,
                'name' => $name,
                'tel' => $tel,
                'email' => $email,
                'siteName' => $siteName,
                'design' => $designText,
                'salePromotion' => $salePromotionText
            )
        );

        $this->sendEmail($subject, $template);

        return new JsonResponse(array('answer' => 'ok'));
    }

    /**
     * Форма заказа домена
     *
     * @Route("/order/domain", name="feed_order_domain")
     * @Method("POST")
     */
    public function orderDomainAction(Request $request)
    {
        $subject = "Заказ домена";
        $name = $request->request->get('name');
        $tel = $request->request->get('tel');
        $email = $request->request->get('email');
        $ref = $request->request->get('ref');
        $descriptionRef = $request->request->get('ref_description');
        $domain = $request->request->get('ref_value');

        $template = $this->renderView(
            'AppBundle:Email:order.domain.html.twig',
            array(
                'subject' => $subject,
                'ref' => $ref,
                'descriptionRef' => $descriptionRef,
                'domain' => $domain,
                'name' => $name,
                'tel' => $tel,
                'email' => $email
            )
        );

        $this->sendEmail($subject, $template);

        return new JsonResponse(array('answer' => 'ok'));
    }

    /**
     * Форма заказа рекламы
     *
     * @Route("/order/adversting", name="feed_order_advertising")
     * @Method("POST")
     */
    public function orderAdverstingAction(Request $request)
    {
        $subject = "Заказ рекламы в интернете";
        $name = $request->request->get('name');
        $tel = $request->request->get('tel');
        $email = $request->request->get('email');
        $ref = $request->request->get('ref');
        $descriptionRef = $request->request->get('ref_description');
        $tariff = $request->request->get('ref_value');

        $template = $this->renderView(
            'AppBundle:Email:order.adwersting.html.twig',
            array(
                'subject' => $subject,
                'ref' => $ref,
                'descriptionRef' => $descriptionRef,
                'tariff' => $tariff,
                'name' => $name,
                'tel' => $tel,
                'email' => $email
            )
        );

        $this->sendEmail($subject, $template);

        return new JsonResponse(array('answer' => 'ok'));
    }

    /**
     * Форма заказа хостинга
     *
     * @Route("/order/hosting", name="feed_order_hosting")
     * @Method("POST")
     */
    public function orderHostingAction(Request $request)
    {
        $subject = "Заказ домена или хостинга";
        $name = $request->request->get('name');
        $tel = $request->request->get('tel');
        $email = $request->request->get('email');
        $ref = $request->request->get('ref');
        $domain = $request->request->get('domain');
        $descriptionRef = $request->request->get('ref_description');
        $tariff = $request->request->get('ref_value');
        $dateInterval = $request->request->get('date_interval');
        $isNeedHelp = $request->request->get('isNeedHelp');

        $template = $this->renderView(
            'AppBundle:Email:order.hosting.html.twig',
            array(
                'subject' => $subject,
                'ref' => $ref,
                'descriptionRef' => $descriptionRef,
                'tariff' => $tariff,
                'name' => $name,
                'tel' => $tel,
                'email' => $email,
                'domain' => $domain,
                'dateInterval' => $dateInterval,
                'isNeedHelp' => $isNeedHelp

            )
        );

        $this->sendEmail($subject, $template);

        return new JsonResponse(array('answer' => 'ok'));
    }

    /**
     * Форма обратной связи
     *
     * @Route("/callback", name="feed_call_back")
     * @Method("POST")
     */
    public function feedBackAction(Request $request)
    {
        $subject = "Заказ обратного звонка";
        $name = $request->request->get('name');
        $tel = $request->request->get('tel');
        $email = $request->request->get('email');
        $msg = $request->request->get('msg');
        $ref = $request->request->get('ref');
        $descriptionRef = $request->request->get('ref_description');
        $valueRef = $request->request->get('ref_value');

        $template = $this->renderView(
            'AppBundle:Email:feedback.html.twig',
            array(
                'subject' => $subject,
                'ref' => $ref,
                'descriptionRef' => $descriptionRef,
                'valueRef' => $valueRef,
                'name' => $name,
                'tel' => $tel,
                'email' => $email,
                'msg' => $msg
            )
        );

        $this->sendEmail($subject, $template);

        return new JsonResponse(array('answer' => 'ok'));
    }


    private function sendEmail($subject, $template)
    {
        $mailer = $this->get('mailer');
        $emails = $this->container->getParameter('admin_emails');
        ;
        $message = $mailer->createMessage()
            ->setSubject($subject)
            ->setFrom('robot@colornew.ru')
            ->setBody($template, 'text/html');
        if (count($emails) > 0) {
            foreach ($emails as $email) {
                $message->setTo($email);
                $mailer->send($message);
            }
        }
    }
}