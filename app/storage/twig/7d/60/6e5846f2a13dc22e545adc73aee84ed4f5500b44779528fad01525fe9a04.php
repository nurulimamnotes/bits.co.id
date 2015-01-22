<?php

/* /home/server/public_html/themes/bits/pages/home.htm */
class __TwigTemplate_7d606e5846f2a13dc22e545adc73aee84ed4f5500b44779528fad01525fe9a04 extends Twig_Template
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
        echo "<div id=\"slide\">
\t";
        // line 2
        $context['__cms_partial_params'] = [];
        echo $this->env->getExtension('CMS')->partialFunction("slides"        , $context['__cms_partial_params']        );
        unset($context['__cms_partial_params']);
        // line 3
        echo "</div>

<section id=\"features\">
\t";
        // line 6
        $context['__cms_partial_params'] = [];
        echo $this->env->getExtension('CMS')->partialFunction("features"        , $context['__cms_partial_params']        );
        unset($context['__cms_partial_params']);
        // line 7
        echo "</section>

<section id=\"services\" class=\"service-item\">
\t";
        // line 10
        $context['__cms_partial_params'] = [];
        echo $this->env->getExtension('CMS')->partialFunction("services"        , $context['__cms_partial_params']        );
        unset($context['__cms_partial_params']);
        // line 11
        echo "</section>

<section id=\"pricing\">
\t";
        // line 14
        $context['__cms_partial_params'] = [];
        echo $this->env->getExtension('CMS')->partialFunction("harga"        , $context['__cms_partial_params']        );
        unset($context['__cms_partial_params']);
        // line 15
        echo "</section>

<section id=\"work-process\">
    ";
        // line 18
        $context['__cms_partial_params'] = [];
        echo $this->env->getExtension('CMS')->partialFunction("proses.htm"        , $context['__cms_partial_params']        );
        unset($context['__cms_partial_params']);
        // line 19
        echo "</section>

<section id=\"meet-team\">
    ";
        // line 22
        $context['__cms_partial_params'] = [];
        echo $this->env->getExtension('CMS')->partialFunction("team.htm"        , $context['__cms_partial_params']        );
        unset($context['__cms_partial_params']);
        // line 23
        echo "</section>

<section id=\"works\" class=\" clearfix grid\"> 
\t";
        // line 26
        $context['__cms_partial_params'] = [];
        echo $this->env->getExtension('CMS')->partialFunction("karya"        , $context['__cms_partial_params']        );
        unset($context['__cms_partial_params']);
        // line 27
        echo "</section>

<section id=\"client\">
    ";
        // line 30
        $context['__cms_partial_params'] = [];
        echo $this->env->getExtension('CMS')->partialFunction("client"        , $context['__cms_partial_params']        );
        unset($context['__cms_partial_params']);
        // line 31
        echo "</section>

<section id=\"testimonial\">
    ";
        // line 34
        $context['__cms_partial_params'] = [];
        echo $this->env->getExtension('CMS')->partialFunction("testimonial"        , $context['__cms_partial_params']        );
        unset($context['__cms_partial_params']);
        // line 35
        echo "</section>

<section id=\"partner\">
\t";
        // line 38
        $context['__cms_partial_params'] = [];
        echo $this->env->getExtension('CMS')->partialFunction("partners"        , $context['__cms_partial_params']        );
        unset($context['__cms_partial_params']);
        // line 39
        echo "</section>

<section id=\"product-post\">
    ";
        // line 42
        $context['__cms_partial_params'] = [];
        echo $this->env->getExtension('CMS')->partialFunction("hubungi"        , $context['__cms_partial_params']        );
        unset($context['__cms_partial_params']);
        // line 43
        echo "</section>";
    }

    public function getTemplateName()
    {
        return "/home/server/public_html/themes/bits/pages/home.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  116 => 43,  112 => 42,  107 => 39,  103 => 38,  98 => 35,  94 => 34,  89 => 31,  85 => 30,  80 => 27,  76 => 26,  71 => 23,  67 => 22,  62 => 19,  58 => 18,  53 => 15,  49 => 14,  44 => 11,  40 => 10,  35 => 7,  31 => 6,  26 => 3,  22 => 2,  19 => 1,);
    }
}
