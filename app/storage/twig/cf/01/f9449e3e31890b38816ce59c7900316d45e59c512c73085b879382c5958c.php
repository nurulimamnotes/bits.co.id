<?php

/* /home/server/public_html/themes/bits/layouts/default.htm */
class __TwigTemplate_cf01f9449e3e31890b38816ce59c7900316d45e59c512c73085b879382c5958c extends Twig_Template
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
        echo "<!DOCTYPE html>
<html lang=\"en\">
<head>
    ";
        // line 4
        $context['__cms_partial_params'] = [];
        echo $this->env->getExtension('CMS')->partialFunction("meta"        , $context['__cms_partial_params']        );
        unset($context['__cms_partial_params']);
        // line 5
        echo "</head>

<body class=\"homepage\">

<header id=\"header\">
        ";
        // line 10
        $context['__cms_partial_params'] = [];
        echo $this->env->getExtension('CMS')->partialFunction("nav"        , $context['__cms_partial_params']        );
        unset($context['__cms_partial_params']);
        // line 11
        echo "</header><!--/header-->

    ";
        // line 13
        echo $this->env->getExtension('CMS')->pageFunction();
        // line 14
        echo "
";
        // line 15
        $context['__cms_partial_params'] = [];
        echo $this->env->getExtension('CMS')->partialFunction("footer"        , $context['__cms_partial_params']        );
        unset($context['__cms_partial_params']);
        // line 16
        echo "
<!-- Scripts -->
<script type=\"text/javascript\" src=\"";
        // line 18
        echo $this->env->getExtension('CMS')->themeFilter("assets/js/html5shiv.js");
        echo "\"></script>
<script type=\"text/javascript\" src=\"";
        // line 19
        echo $this->env->getExtension('CMS')->themeFilter("assets/js/respond.min.js");
        echo "\"></script>
<script type=\"text/javascript\" src=\"";
        // line 20
        echo $this->env->getExtension('CMS')->themeFilter("assets/js/jquery.js");
        echo "\"></script>
<script type=\"text/javascript\" src=\"";
        // line 21
        echo $this->env->getExtension('CMS')->themeFilter("assets/js/bootstrap.min.js");
        echo "\"></script>
<script type=\"text/javascript\" src=\"";
        // line 22
        echo $this->env->getExtension('CMS')->themeFilter("assets/js/jquery.prettyPhoto.js");
        echo "\"></script>
<script type=\"text/javascript\" src=\"";
        // line 23
        echo $this->env->getExtension('CMS')->themeFilter("assets/js/jquery.isotope.min.js");
        echo "\"></script>
<script type=\"text/javascript\" src=\"";
        // line 24
        echo $this->env->getExtension('CMS')->themeFilter("assets/js/main.js");
        echo "\"></script>
<script type=\"text/javascript\" src=\"";
        // line 25
        echo $this->env->getExtension('CMS')->themeFilter("assets/js/plugins.js");
        echo "\"></script>
<script type=\"text/javascript\" src=\"";
        // line 26
        echo $this->env->getExtension('CMS')->themeFilter("assets/js/wow.min.js");
        echo "\"></script>
";
        // line 27
        echo '<script src="'. Request::getBasePath()
                .'/modules/system/assets/js/framework.js"></script>'.PHP_EOL;
        echo '<script src="'. Request::getBasePath()
                    .'/modules/system/assets/js/framework.extras.js"></script>'.PHP_EOL;
        echo '<link href="'. Request::getBasePath()
                    .'/modules/system/assets/css/framework.extras.css" rel="stylesheet">'.PHP_EOL;
        // line 28
        echo $this->env->getExtension('CMS')->assetsFunction('js');
        echo $this->env->getExtension('CMS')->displayBlock('scripts');
        echo "             
         
</body>
</html>";
    }

    public function getTemplateName()
    {
        return "/home/server/public_html/themes/bits/layouts/default.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  99 => 28,  92 => 27,  88 => 26,  84 => 25,  80 => 24,  76 => 23,  72 => 22,  68 => 21,  64 => 20,  60 => 19,  56 => 18,  52 => 16,  48 => 15,  45 => 14,  43 => 13,  39 => 11,  35 => 10,  28 => 5,  24 => 4,  19 => 1,);
    }
}
