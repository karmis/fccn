<?php
namespace AppBundle\Listeners;


use Symfony\Component\HttpKernel\Event\GetResponseEvent;
use Symfony\Component\HttpFoundation\RedirectResponse;

class IEListener
{
    private $router;
    private $container;

    public function __construct($router, $container)
    {
        $this->router = $router;
        $this->container = $container;
    }    

    public function onKernelRequest(GetResponseEvent $event)
    {
        $container = $this->container;
        $routeName = $container->get('request')->get('_route');
        if(preg_match('/(?i)msie [1-8]/',$_SERVER['HTTP_USER_AGENT']))
        {
            // if IE<=8
            $route = 'ie_too_old';
            if ($route !== $event->getRequest()->get('_route')) {
                $url = $this->router->generate($route);
                $event->setResponse(new RedirectResponse($url));
            }
        }
    }
}