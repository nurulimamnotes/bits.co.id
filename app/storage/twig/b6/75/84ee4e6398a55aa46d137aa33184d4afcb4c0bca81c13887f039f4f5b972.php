<?php

/* /home/server/public_html/themes/bits/partials/nav.htm */
class __TwigTemplate_b67584ee4e6398a55aa46d137aa33184d4afcb4c0bca81c13887f039f4f5b972 extends Twig_Template
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
        // line 2
        $context["links"] = array("home" => array(0 => "home", 1 => "Home"), "about" => array(0 => "samples/about", 1 => "About Us"), "services" => array(0 => "samples/services", 1 => "Services"), "portfolio" => array(0 => "samples/portfolio", 1 => "Portfolio"), "pages" => array("name" => "Pages", "sublinks" => array("pricing" => array(0 => "samples/pricing", 1 => "Pricing Table"), "error" => array(0 => "error", 1 => "Error Page"), "404" => array(0 => "404", 1 => "404 Page"), "shortcodes" => array(0 => "samples/shortcodes", 1 => "Shortcodes"))), "blog" => array("name" => "Blog", "sublinks" => array("blog" => array(0 => "blog/blog", 1 => "Blog"), "blog-item" => array(0 => "blog/blog-item", 1 => "Blog Item"))), "contact" => array(0 => "samples/contact", 1 => "Contact"));
        // line 27
        echo "
";
        // line 48
        echo "
";
        // line 49
        $context["nav"] = $this;
        // line 50
        echo "
<nav class=\"navbar navbar-inverse\" role=\"banner\">
\t<div class=\"container\">
\t\t<div class=\"navbar-header\">
\t\t\t<button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\".navbar-collapse\">
\t\t\t<span class=\"sr-only\">Toggle navigation</span>
\t\t\t<span class=\"icon-bar\"></span>
\t\t\t<span class=\"icon-bar\"></span>
\t\t\t<span class=\"icon-bar\"></span>
\t\t\t</button>
\t\t\t<a class=\"navbar-brand\" href=\"";
        // line 60
        echo $this->env->getExtension('CMS')->pageFilter("home");
        echo "\"><img src=\"";
        echo $this->env->getExtension('CMS')->themeFilter("assets/images/logo.png");
        echo "\" alt=\"logo\"></a>
\t\t</div>
\t\t<div class=\"collapse navbar-collapse navbar-right\">
\t\t\t<ul class=\"nav navbar-nav\">
\t\t\t\t";
        // line 64
        echo $context["nav"]->getrender_menu((isset($context["links"]) ? $context["links"] : null));
        echo "
\t\t\t</ul>
\t\t</div>
\t</div>
</nav><!--/nav-->";
    }

    // line 28
    public function getrender_menu($__links__ = null)
    {
        $context = $this->env->mergeGlobals(array(
            "links" => $__links__,
        ));

        $blocks = array();

        ob_start();
        try {
            // line 29
            echo "    ";
            $context['_parent'] = (array) $context;
            $context['_seq'] = twig_ensure_traversable((isset($context["links"]) ? $context["links"] : null));
            foreach ($context['_seq'] as $context["code"] => $context["link"]) {
                // line 30
                echo "        <li class=\"";
                echo ((($context["code"] == (isset($context["currentPage"]) ? $context["currentPage"] : null))) ? ("active") : (""));
                echo " ";
                echo (($this->getAttribute($context["link"], "sublinks", array())) ? ("dropdown") : (""));
                echo "\">
            <a
                href=\"";
                // line 32
                echo (($this->getAttribute($context["link"], "sublinks", array())) ? ("#") : ($this->env->getExtension('CMS')->pageFilter((($this->getAttribute($context["link"], "page", array())) ? ($this->getAttribute($context["link"], "page", array())) : ($this->getAttribute($context["link"], 0, array(), "array"))))));
                echo "\"
                ";
                // line 33
                if ($this->getAttribute($context["link"], "sublinks", array())) {
                    echo "data-toggle=\"dropdown\"";
                }
                // line 34
                echo "                class=\"";
                echo (($this->getAttribute($context["link"], "sublinks", array())) ? ("dropdown-toggle") : (""));
                echo "\"
            >
                ";
                // line 36
                echo twig_escape_filter($this->env, (($this->getAttribute($context["link"], "name", array())) ? ($this->getAttribute($context["link"], "name", array())) : ($this->getAttribute($context["link"], 1, array(), "array"))), "html", null, true);
                echo "
                ";
                // line 37
                if ($this->getAttribute($context["link"], "sublinks", array())) {
                    echo "<span class=\"caret\"></span>";
                }
                // line 38
                echo "            </a>
            ";
                // line 39
                if ($this->getAttribute($context["link"], "sublinks", array())) {
                    // line 40
                    echo "                <span class=\"dropdown-arrow\"></span>
                <ul class=\"dropdown-menu\">
                    ";
                    // line 42
                    echo $this->getAttribute($this, "render_menu", array(0 => $this->getAttribute($context["link"], "sublinks", array())), "method");
                    echo "
                </ul>
            ";
                }
                // line 45
                echo "        </li>
    ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['code'], $context['link'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
        } catch (Exception $e) {
            ob_end_clean();

            throw $e;
        }

        return ('' === $tmp = ob_get_clean()) ? '' : new Twig_Markup($tmp, $this->env->getCharset());
    }

    public function getTemplateName()
    {
        return "/home/server/public_html/themes/bits/partials/nav.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  120 => 45,  114 => 42,  110 => 40,  108 => 39,  105 => 38,  101 => 37,  97 => 36,  91 => 34,  87 => 33,  83 => 32,  75 => 30,  70 => 29,  59 => 28,  50 => 64,  41 => 60,  29 => 50,  27 => 49,  24 => 48,  21 => 27,  19 => 2,);
    }
}
