<?php

/* /home/server/public_html/themes/bits/partials/client.htm */
class __TwigTemplate_f762481e339b5e895bbe742381c20aae1efcec6740fa10d45e7d6bd21a7e40e1 extends Twig_Template
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
        echo "<div id=\"cwrap\">
    <div class=\"container\">
        <div class=\"row centered\">
        <div class=\"section-header\">
                <h2 class=\"section-title text-center wow fadeInDown\">Client Kami</h2>
                <p class=\"text-center wow fadeInDown\">Beberapa daftar client populer kami yang sangat bangga menggunakan jasa kami</p>
            </div>
            <div class=\"col-lg-3 col-md-3 col-sm-3\">
                <img src=\"";
        // line 9
        echo $this->env->getExtension('CMS')->themeFilter("assets/images/clients/client01.png");
        echo "\" class=\"img-responsive\"></div>
            <div class=\"col-lg-3 col-md-3 col-sm-3\">
                <img src=\"";
        // line 11
        echo $this->env->getExtension('CMS')->themeFilter("assets/images/clients/client02.png");
        echo "\" class=\"img-responsive\"></div>
            <div class=\"col-lg-3 col-md-3 col-sm-3\">
                <img src=\"";
        // line 13
        echo $this->env->getExtension('CMS')->themeFilter("assets/images/clients/client03.png");
        echo "\" class=\"img-responsive\"></div>
            <div class=\"col-lg-3 col-md-3 col-sm-3\">
                <img src=\"";
        // line 15
        echo $this->env->getExtension('CMS')->themeFilter("assets/images/clients/client04.png");
        echo "\" class=\"img-responsive\"></div>
        </div>
    </div>
</div>";
    }

    public function getTemplateName()
    {
        return "/home/server/public_html/themes/bits/partials/client.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  44 => 15,  39 => 13,  34 => 11,  29 => 9,  19 => 1,);
    }
}
