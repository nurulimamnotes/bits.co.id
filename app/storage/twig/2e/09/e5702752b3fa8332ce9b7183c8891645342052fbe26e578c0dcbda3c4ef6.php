<?php

/* /home/server/public_html/themes/bits/partials/hubungi.htm */
class __TwigTemplate_2e09e5702752b3fa8332ce9b7183c8891645342052fbe26e578c0dcbda3c4ef6 extends Twig_Template
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
        <div class=\"row\">
            <div class=\"col-md-12\">
                <div class=\"heading-section\">
                    <h2>Konsultasikan Rencana anda Kepada Kami</h2>
                    <img src=\"";
        // line 6
        echo $this->env->getExtension('CMS')->themeFilter("assets/images/under-heading.png");
        echo "\" alt=\"\" >
                </div>
            </div>
    </div>
    <div id=\"contact-us\">
        <div class=\"container\">
            <div class=\"row\">
                <div class=\"product-item col-md-12\">
                    <div class=\"row\">
                        <div class=\"col-md-8\">
                            <div class=\"message-form\">
                                <form role=\"form\" action=\"#\" method=\"post\" class=\"send-message\">
                                    <div class=\"row\">
                                    <div class=\"name col-md-4\">
                                        <input type=\"text\" name=\"name\" id=\"name\" placeholder=\"Nama\" class=\"form-control\" required=\"required\">
                                    </div>
                                    <div class=\"email col-md-4\">
                                        <input type=\"text\" name=\"email\" id=\"email\" placeholder=\"Email\" class=\"form-control\" required=\"required\">
                                    </div>
                                    <div class=\"subject col-md-4\">
                                        <input type=\"text\" name=\"subject\" id=\"subject\" placeholder=\"Judul\" class=\"form-control\" required=\"required\">
                                    </div>
                                    </div>
                                    <div class=\"row\">
                                    <div class=\"text col-md-12\">
                                        <textarea name=\"text\" placeholder=\"Pesan\" class=\"form-control\" required=\"required\"></textarea>
                                    </div>
                                    </div>
                                    <div class=\"send\">
                                        <button type=\"submit\" name=\"submit\" required=\"required\">Kirim</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class=\"col-md-4\">
                            <div class=\"info\">
                                <p>Silahkan datang langsung ke kantor kami pada jam kerja : <br>Senin - Sabtu - 08:00 - 17:00</p>
                                <ul>
                                    <li><i class=\"fa fa-phone\"></i>+62 819 678 048</li>
                                    <li><i class=\"fa fa-globe\"></i>Jl. Raya Cilegon Km.03 STC CC 15 Serang, Banten</li>
                                    <li><i class=\"fa fa-envelope\"></i><a href=\"mailto:info@bits.co.id\">info@bits.co.id</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>";
    }

    public function getTemplateName()
    {
        return "/home/server/public_html/themes/bits/partials/hubungi.htm";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  26 => 6,  19 => 1,);
    }
}
