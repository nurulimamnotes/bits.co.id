<?php

/* /home/server/public_html/themes/bits/partials/features.htm */
class __TwigTemplate_c020be2b6af4487783dab1ff03085d12e712e23f959ba7ee15b502d7d39cbb0a extends Twig_Template
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
            <div class=\"section-header\">
                <h2 class=\"section-title text-center wow fadeInDown\">Jasa Pembuatan Website</h2>
                <p class=\"text-center wow fadeInDown\">BITS membangun website sesuai dengan web standard, responsive &amp; profesional menggunakan Framework Laravel. <br>BITS akan membangun website modern untuk brand perusahaan anda.</p>
            </div>
            <div class=\"row\">
                <div class=\"col-sm-6 wow fadeInLeft\">
                    <img class=\"img-responsive\" src=\"";
        // line 8
        echo $this->env->getExtension('CMS')->themeFilter("assets/images/main-feature.png");
        echo "\" alt=\"\">
                </div>
                <div class=\"col-sm-6\">
                    <div class=\"media service-box wow fadeInRight\">
                        <div class=\"pull-left\">
                            <i class=\"fa fa-laptop\"></i>
                        </div>
                        <div class=\"media-body\">
                            <h4 class=\"media-heading\">Responsive Design</h4>
                            <p>Kompatible dengan Desktop, Laptop, Tablet &amp; Smartphones</p>
                        </div>
                    </div>

                    <div class=\"media service-box wow fadeInRight\">
                        <div class=\"pull-left\">
                            <i class=\"fa fa-rocket\"></i>
                        </div>
                        <div class=\"media-body\">
                            <h4 class=\"media-heading\">Web Hosting</h4>
                            <p>Fast Loading &amp; dapat diakses cepat diseluruh dunia</p>
                        </div>
                    </div>

                    <div class=\"media service-box wow fadeInRight\">
                        <div class=\"pull-left\">
                            <i class=\"fa fa-bar-chart\"></i>
                        </div>
                        <div class=\"media-body\">
                            <h4 class=\"media-heading\">SEO &amp; User Friendly</h4>
                            <p>Mudah ditelusuri baik oleh Pengunjung maupun mesin pencari</p>
                        </div>
                    </div>

                    <div class=\"media service-box wow fadeInRight\">
                        <div class=\"pull-left\">
                            <i class=\"fa fa-code\"></i>
                        </div>
                        <div class=\"media-body\">
                            <h4 class=\"media-heading\">Web Standard</h4>
                            <p>Kode yang bersih dan rapih sesuai dengan standard W3C</p>
                        </div>
                    </div>

                    <div class=\"media service-box wow fadeInRight\">
                        <div class=\"pull-left\">
                            <i class=\"fa fa-gears\"></i>
                        </div>
                        <div class=\"media-body\">
                            <h4 class=\"media-heading\">Support &amp; Maintenance</h4>
                            <p>Bantuan &amp; Perawatan berkala untuk menjaga website selalu live</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>";
    }

    public function getTemplateName()
    {
        return "/home/server/public_html/themes/bits/partials/features.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  28 => 8,  19 => 1,);
    }
}
