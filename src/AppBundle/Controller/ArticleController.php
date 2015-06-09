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

/**
 * Article controller.
 *
 * @Route("/blog")
 */
class ArticleController extends Controller
{
    /**
     * List articles
     *
     * @Route("/filter/{path}", defaults={"path" = null},  name="article_list_filter")
     * @Method("GET")
     * @Template()
     */
    public function indexAction($path = null)
    {
        $em = $this->getDoctrine()->getManager();
        if($path !== null){
            $paths = array(explode(',', $path));
        } else {
            $paths = $path;
        }
        $articles = $em->getRepository('AdminBundle:Article')->findForPath($paths, 'all');

        $articlesPaths = $em->getRepository('AdminBundle:Path')->findBy(
            array(
                'published' => true,
            ),
            array(
                'caption' => 'DESC'
            )
        );

        $paginator = $this->get('knp_paginator');
        $pagination = $paginator->paginate(
            $articles,
            $this->get('request')->query->get('page', 1),
            10
        );

        return array(
            'articlesPaths' => $articlesPaths,
            'pagination' => $pagination,
        );
    }

    /**
     * List articles
     *
     * @Route("/", defaults={"path" = null},  name="article_list_all")
     * @Method("GET")
     * @Template()
     */
    public function allAction()
    {
        $em = $this->getDoctrine()->getManager();
        $articles = $em->getRepository('AdminBundle:Article')->findForPath(null, 'all');

        $articlesPaths = $em->getRepository('AdminBundle:Path')->findBy(
            array(
                'published' => true,
            ),
            array(
                'caption' => 'DESC'
            )
        );

        $paginator = $this->get('knp_paginator');
        $pagination = $paginator->paginate(
            $articles,
            $this->get('request')->query->get('page', 1),
            10
        );

        return array(
            'articlesPaths' => $articlesPaths,
            'pagination' => $pagination,
        );
    }


    /**
     * Finds and displays a Page entity.
     *
     * @Route("/{slug}.html", name="article_display", defaults={"slug" = false}, requirements={"slug" = "[0-9a-zA-Z\/\-.\_\!\?]*"})
     * @Method("GET")
     * @Template()
     */
    public function displayAction($slug)
    {
        $em = $this->getDoctrine()->getManager();
        $article = $em->getRepository('AdminBundle:Article')->findBySlug($slug);

        if(!$article){
            throw $this->createNotFoundException('Unable to find Article entity.');
        }

        return array(
            'entity' => $article,
        );
    }
}