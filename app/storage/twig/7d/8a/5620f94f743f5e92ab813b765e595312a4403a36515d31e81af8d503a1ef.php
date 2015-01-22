<?php

/* /home/server/public_html/themes/bits/partials/meta.htm */
class __TwigTemplate_7d8a5620f94f743f5e92ab813b765e595312a4403a36515d31e81af8d503a1ef extends Twig_Template
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
        echo "<meta charset=\"utf-8\">
<meta http-equiv=\"content-type\" content=\"text/html; charset=utf-8\">
<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">
<meta name=\"description\" content=\"";
        // line 4
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute((isset($context["this"]) ? $context["this"] : null), "page", array()), "meta_description", array()), "html", null, true);
        echo "\">
<meta name=\"keywords\" content=\"";
        // line 5
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute((isset($context["this"]) ? $context["this"] : null), "page", array()), "meta_keywords", array()), "html", null, true);
        echo "\">
<meta name=\"author\" content=\"";
        // line 6
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute((isset($context["this"]) ? $context["this"] : null), "page", array()), "meta_author", array()), "html", null, true);
        echo "\">
<title>";
        // line 7
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute((isset($context["this"]) ? $context["this"] : null), "page", array()), "title", array()), "html", null, true);
        echo " - ";
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute((isset($context["this"]) ? $context["this"] : null), "theme", array()), "site_name", array()), "html", null, true);
        echo "</title>

";
        // line 9
        echo $this->env->getExtension('CMS')->assetsFunction('css');
        echo $this->env->getExtension('CMS')->displayBlock('styles');
        // line 10
        echo "<link href=\"";
        echo $this->env->getExtension('CMS')->themeFilter(array(0 => "assets/css/bootstrap.min.css", 1 => "assets/css/font-awesome.min.css", 2 => "assets/css/animate.min.css", 3 => "assets/css/prettyPhoto.css", 4 => "assets/css/main.css", 5 => "assets/css/harga.css", 6 => "assets/css/footer.css", 7 => "assets/css/testimonial.css", 8 => "assets/css/hubungi.css", 9 => "assets/css/karya.css", 10 => "assets/css/proses.css", 11 => "assets/css/team.css", 12 => "assets/css/slides.css", 13 => "assets/css/features.css", 14 => "assets/css/responsive.css"));
        // line 25
        echo "\" rel=\"stylesheet\">

<link rel=\"shortcut icon\" href=\"";
        // line 27
        echo $this->env->getExtension('CMS')->themeFilter("assets/images/ico/favicon.ico");
        echo "\">
<link rel=\"apple-touch-icon-precomposed\" sizes=\"144x144\" href=\"";
        // line 28
        echo $this->env->getExtension('CMS')->themeFilter("assets/images/ico/apple-touch-icon-144-precomposed.png");
        echo "\">
<link rel=\"apple-touch-icon-precomposed\" sizes=\"114x114\" href=\"";
        // line 29
        echo $this->env->getExtension('CMS')->themeFilter("assets/images/ico/apple-touch-icon-114-precomposed.png");
        echo "\">
<link rel=\"apple-touch-icon-precomposed\" sizes=\"72x72\" href=\"";
        // line 30
        echo $this->env->getExtension('CMS')->themeFilter("assets/images/ico/apple-touch-icon-72-precomposed.png");
        echo "\">
<link rel=\"apple-touch-icon-precomposed\" href=\"";
        // line 31
        echo $this->env->getExtension('CMS')->themeFilter("assets/images/ico/apple-touch-icon-57-precomposed.png");
        echo "\">";
    }

    public function getTemplateName()
    {
        return "/home/server/public_html/themes/bits/partials/meta.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  69 => 31,  65 => 30,  61 => 29,  57 => 28,  53 => 27,  49 => 25,  46 => 10,  43 => 9,  36 => 7,  32 => 6,  28 => 5,  24 => 4,  19 => 1,);
    }
}
