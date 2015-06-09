<?php

namespace AppBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Request;

class DefaultController extends Controller
{
    /**
     * Показывает главную страницу
     *
     * @Route("/", name="main_page")
     * @Method("GET")
     * @Template()
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();
        $articles = $em->getRepository('AdminBundle:Article')->findForPath(array(8),3);

        return array(
            'articles' => $articles,
        );
    }



    /**
     * Contacts
     *
     * @Route("/contacts.html", name="contact_page")
     * @Method("GET")
     * @Template()
     */
    public function contactAction()
    {

        return array();
    }

    /**
     * Domains
     *
     * @Route("/domains-and-hosting.html", name="domains_page")
     * @Method("GET")
     * @Template()
     */
    public function domainsAction()
    {
        $em = $this->getDoctrine()->getManager();
        $articles = $em->getRepository('AdminBundle:Article')->findForPath(array(6),3);

        return array(
            'articles' => $articles,
        );
    }

    /**
     * Advertising
     *
     * @Route("/internet-advertising.html", name="advertising_page")
     * @Method("GET")
     * @Template()
     */
    public function advertisingAction()
    {
        $em = $this->getDoctrine()->getManager();
        $articles = $em->getRepository('AdminBundle:Article')->findForPath(array(5),3);

        return array(
            'articles' => $articles,
        );
    }



    /**
     * Internet shop site
     *
     * @Route("/internet-magazin.html", name="shop_page")
     * @Method("GET")
     * @Template()
     */
    public function shopAction()
    {
        $em = $this->getDoctrine()->getManager();
        $articles = $em->getRepository('AdminBundle:Article')->findForPath(array(2),3);

        return array(
            'articles' => $articles,
        );
    }

    /**
     * Simple site
     *
     * @Route("/site-vizitka.html", name="vizitka_page")
     * @Method("GET")
     * @Template()
     */
    public function vizitkaAction()
    {
        $em = $this->getDoctrine()->getManager();
        $articles = $em->getRepository('AdminBundle:Article')->findForPath(array(1),3);

        return array(
            'articles' => $articles,
        );
    }

    /**
     * Corp site
     *
     * @Route("/korparativniy-site.html", name="corp_page")
     * @Method("GET")
     * @Template()
     */
    public function corpAction()
    {
        $em = $this->getDoctrine()->getManager();
        $articles = $em->getRepository('AdminBundle:Article')->findForPath(array(3),3);

        return array(
            'articles' => $articles,
        );
    }

    /**
     * Landing site
     *
     * @Route("/landing-page.html", name="landing_page")
     * @Method("GET")
     * @Template()
     */
    public function landingAction()
    {
        $em = $this->getDoctrine()->getManager();
        $articles = $em->getRepository('AdminBundle:Article')->findForPath(array(4),3);

        return array(
            'articles' => $articles,
        );
    }

    /**
     * Promotion
     *
     * @Route("/promotion-of-sites.html", name="promotion_page")
     * @Method("GET")
     * @Template()
     */
    public function promotionAction()
    {
        $em = $this->getDoctrine()->getManager();
        $articles = $em->getRepository('AdminBundle:Article')->findForPath(array(5),3);

        return array(
            'articles' => $articles,
        );
    }

    /**
     * Main page
     *
     * @Route("/site-in-installments.html", name="installments_page")
     * @Method("GET")
     * @Template()
     */
    public function installmentsAction()
    {
        return array();
    }

    /**
     * Main page
     *
     * @Route("/social-networks.html", name="social_page")
     * @Method("GET")
     * @Template()
     */
    public function socialAction()
    {
        $em = $this->getDoctrine()->getManager();
        $articles = $em->getRepository('AdminBundle:Article')->findForPath(array(5),3);

        return array(
            'articles' => $articles,
        );
    }

    /**
     * Completed sites
     *
     * @Route("/gotovie.html", name="gotovie_page")
     * @Method("GET")
     * @Template()
     */
    public function gotovieAction()
    {
        return array();
    }

    /**
     * Support
     *
     * @Route("/support-of-sites.html", name="support_page")
     * @Method("GET")
     * @Template()
     */
    public function supportAction()
    {
        return array();
    }

    /**
     * Payment
     *
     * @Route("/payment.html", name="payment_page")
     * @Method("GET")
     * @Template()
     */
    public function paymentAction()
    {
        return array();
    }

    /**
     * IE Modernizer
     *
     * @Route("/ie-too-old", name="ie_too_old")
     * @Method("GET")
     * @Template()
     */
    public function ietoooldAction()
    {
        return array();
    }



    /**
     * Payment
     *
     * @Route("/become-a-client.html", name="become_client_page")
     * @Method("GET")
     * @Template()
     */
    public function becomeClientAction()
    {
        return array();
    }

    /**
     * Modules
     *
     * @Route("/additional-modules.html/{path}", defaults={"path" = null},  name="modules_page")
     * @Method("GET")
     * @Template()
     */
    public function modulesAction($path = null)
    {

        $em = $this->getDoctrine()->getManager();
        if($path !== null){
            $paths = array(explode(',', $path));
        } else {
            $paths = $path;
        }
        $modules = $em->getRepository('AdminBundle:Module')->findForPath($paths, 'all');

        $modulePaths = $em->getRepository('AdminBundle:ModulePath')->findBy(
            array(
                'published' => true,
            ),
            array(
                'caption' => 'DESC'
            )
        );

        $paginator = $this->get('knp_paginator');
        $pagination = $paginator->paginate(
            $modules,
            $this->get('request')->query->get('page', 1),
            7
        );

        return array(
            'modulesPaths' => $modulePaths,
            'pagination' => $pagination,
        );
    }


    /**
     * Completed sites
     *
     * @Route("/dontknow", name="dontknow")
     * @Method("POST")
     */
    public function dontKnowAction()
    {
        $availables = array(
            array(
                'caption' => 'Сайт-визитка',
                'href' => $this->generateUrl('vizitka_page')
            ),
            array(
                'caption' => 'Корпоративный сайт',
                'href' => $this->generateUrl('corp_page')
            ),
            array(
                'caption' => 'Landing page',
                'href' => $this->generateUrl('landing_page')
            ),
            array(
                'caption' => 'Поддержка',
                'href' => $this->generateUrl('support_page')
            ),
            array(
                'caption' => 'Готовые сайты',
                'href' => $this->generateUrl('gotovie_page')
            ),
            array(
                'caption' => 'Продвижение в соц. сетях',
                'href' => $this->generateUrl('social_page')
            ),
        );

        $count = 3;
        $resultArray = array();
        for($i = 0; $i<=$count;$i++){
            $index = rand(0, count($availables)-1);
            $resultArray[] = $availables[$index];
            unset($availables[$index]);
            $availables = array_values($availables);
        }

        return new JsonResponse($resultArray);

    }

    /**
     * Finds and displays a Page entity.
     *
     * @Route("/{slug}.html", name="page_display", defaults={"slug" = false}, requirements={"slug" = "[0-9a-zA-Z\/\-.\_]*"})
     * @Method("GET")
     * @Template()
     */
    public function pageAction($slug)
    {
        $em = $this->getDoctrine()->getManager();

        $entity = $em->getRepository('AdminBundle:Page')->findBySlug($slug);

        if (!$entity) {
            throw $this->createNotFoundException('Unable to find Page entity.');
        }

        return array(
            'entity'      => $entity
        );
    }

}