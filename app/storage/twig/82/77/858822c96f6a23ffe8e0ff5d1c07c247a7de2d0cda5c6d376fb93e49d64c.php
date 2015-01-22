<?php

/* /home/server/public_html/themes/bits/partials/partners.htm */
class __TwigTemplate_8277858822c96f6a23ffe8e0ff5d1c07c247a7de2d0cda5c6d376fb93e49d64c extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = false;

        $this->blocks = array(
        );
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        // line 1
        echo "<div class=\"container\">
            <div class=\"center wow fadeInDown\">
                <h2>Partner Kami</h2>
            </div>

            <div class=\"partners\">
                <ul>
                    <li> <a href=\"#\"><img class=\"img-responsive wow fadeInDown\" data-wow-duration=\"1000ms\" data-wow-delay=\"300ms\" src=\"";
        // line 8
        echo $this->env->getExtension('CMS')->themeFilter("assets/images/partners/partner1.png");
        echo "\"></a></li>
                    <li> <a href=\"#\"><img class=\"img-responsive wow fadeInDown\" data-wow-duration=\"1000ms\" data-wow-delay=\"600ms\" src=\"";
        // line 9
        echo $this->env->getExtension('CMS')->themeFilter("assets/images/partners/partner2.png");
        echo "\"></a></li>
                    <li> <a href=\"#\"><img class=\"img-responsive wow fadeInDown\" data-wow-duration=\"1000ms\" data-wow-delay=\"900ms\" src=\"";
        // line 10
        echo $this->env->getExtension('CMS')->themeFilter("assets/images/partners/partner3.png");
        echo "\"></a></li>
                    <li> <a href=\"#\"><img class=\"img-responsive wow fadeInDown\" data-wow-duration=\"1000ms\" data-wow-delay=\"1200ms\" src=\"";
        // line 11
        echo $this->env->getExtension('CMS')->themeFilter("assets/images/partners/partner4.png");
        echo "\"></a></li>
                    <li> <a href=\"#\"><img class=\"img-responsive wow fadeInDown\" data-wow-duration=\"1000ms\" data-wow-delay=\"1500ms\" src=\"";
        // line 12
        echo $this->env->getExtension('CMS')->themeFilter("assets/images/partners/partner5.png");
        echo "\"></a></li>
                </ul>
            </div>
        </div><!--/.container-->";
    }

    public function getTemplateName()
    {
        return "/home/server/public_html/themes/bits/partials/partners.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  44 => 12,  40 => 11,  36 => 10,  32 => 9,  28 => 8,  19 => 1,);
    }
}
