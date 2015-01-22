<?php

/* /home/server/public_html/themes/bits/partials/footer.htm */
class __TwigTemplate_29c5ce9ec32a8506d73579cbdac44a4c58799f71cc8feda08958c3630210f46b extends Twig_Template
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
        echo "<footer id=\"footerku\">
        <div class=\"footer1\">
            <div class=\"container\">
                <div class=\"row\">
                    <div class=\"col-md-3 widget\">
                        <h3 class=\"widget-title\">Blog</h3>
                        <div class=\"widget-body\">
                            <ul>
                                <li>
                                    <a href=\"#\">Tentang</a>
                                </li>
                                <li>
                                    <a href=\"#\">Tentang</a>
                                </li>
                                <li>
                                    <a href=\"#\">Tentang</a>
                                </li>
                                <li>
                                    <a href=\"#\">Tentang</a>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div class=\"col-md-3 widget\">
                        <h3 class=\"widget-title\">Jasa Kami</h3>
                        <div class=\"widget-body\">
                            <ul>
                                <li>
                                    <a href=\"#\">Tentang</a>
                                </li>
                                <li>
                                    <a href=\"#\">Tentang</a>
                                </li>
                                <li>
                                    <a href=\"#\">Tentang</a>
                                </li>
                                <li>
                                    <a href=\"#\">Tentang</a>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div class=\"col-md-6 widget\">
                        <h3 class=\"widget-title\">Tentang BITS.co.id</h3>
                        <div class=\"widget-body\">
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excepturi, dolores, quibusdam architecto voluptatem amet fugiat nesciunt placeat provident cumque accusamus itaque voluptate modi quidem dolore optio velit hic iusto vero praesentium repellat commodi ad id expedita cupiditate repellendus possimus unde?</p>
                        </div>
                    </div>

                </div> <!-- /row of widgets -->
            </div>
        </div>

<section id=\"footer\">
        <div class=\"container\">
            <div class=\"row\">
                <div class=\"col-sm-6\">
                    &copy; Copyright 2013 - ";
        // line 60
        echo twig_escape_filter($this->env, twig_date_format_filter($this->env, "now", "Y"), "html", null, true);
        echo " <a href=\"http://www.bits.co.id/\" title=\"";
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute((isset($context["this"]) ? $context["this"] : null), "theme", array()), "site_name", array()), "html", null, true);
        echo "\">";
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute((isset($context["this"]) ? $context["this"] : null), "theme", array()), "site_name", array()), "html", null, true);
        echo "</a>. Powered <em>by</em> <a href=\"http://octobercms.com/\" target=\"_blank\">OctoberCMS</a>
                </div>
                <div class=\"col-sm-6\">
                    <ul class=\"social-icons\">
                        <li><a href=\"#\"><i class=\"fa fa-facebook\"></i></a></li>
                        <li><a href=\"#\"><i class=\"fa fa-twitter\"></i></a></li>
                        <li><a href=\"#\"><i class=\"fa fa-google-plus\"></i></a></li>
                        <li><a href=\"#\"><i class=\"fa fa-pinterest\"></i></a></li>
                        <li><a href=\"#\"><i class=\"fa fa-dribbble\"></i></a></li>
                        <li><a href=\"#\"><i class=\"fa fa-behance\"></i></a></li>
                        <li><a href=\"#\"><i class=\"fa fa-flickr\"></i></a></li>
                        <li><a href=\"#\"><i class=\"fa fa-youtube\"></i></a></li>
                        <li><a href=\"#\"><i class=\"fa fa-linkedin\"></i></a></li>
                        <li><a href=\"#\"><i class=\"fa fa-github\"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
</section>

    </footer>";
    }

    public function getTemplateName()
    {
        return "/home/server/public_html/themes/bits/partials/footer.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  80 => 60,  19 => 1,);
    }
}
