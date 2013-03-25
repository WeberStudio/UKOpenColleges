    <section class="mainpage">
                <!-- BEGIN TOGGLE CONTENT -->
                <div class="toggle-button"><span class="toggle-indicator">+</span></div>

                <div class="toggle-content close">
                    <div class="flexslider mainslide">
                        <ul class="slides">
                            <li>
                                <img src="<? echo theme_url('assets/images/slideimg1')?>" alt="Responsive" /> 
                                <p class="flex-title">Responsive</p>
                            </li>
                            <li>  
                                <img src="<? echo theme_url('assets/images/slideimg2')?>" alt="Tile Design" />
                                <p class="flex-title">Tile Design</p>
                            </li>
                            <li>
                                <img src="<? echo theme_url('assets/images/slideimg3')?>" alt="Customizability" />
                                <p class="flex-title">Customizability</p>
                            </li>
                        </ul>
                    </div><!-- end .flexslider -->

                    <div class="quote-bg1"><div class="quote-w">Hello! This is a Metro UI-inspired template which brings a new web-browsing experience to the users. To further improve it, feedbacks are greatly welcomed!</div></div>

                </div><!-- end .toggle-content -->
                <!-- END TOGGLE CONTENT -->
            </section><!-- end #mainpage -->

            <div id="loader"></div><!-- loader image for AJAX -->

            <section id="mainpage-mos">
                <!-- BEGIN TILE CONTENT -->
                <section id="content-mos" class="centered clearfix">
                    <!-- Tile 1 -->
                    <a href="#article-1" class="lightbox" rel="section">
                        <div class="tile large live" data-stops="0,25%,50%,75%,100%" data-speed="3000" data-delay="0" data-direction="horizontal" data-stack="true">
                            <div class="live-front">   
                                <img class="live-img" src="<? echo theme_url('assets/images/placeholder/large_blank.png')?>" alt="Article 1"/>
                            </div>
                            <div class="live-back">
                                <img class="live-img" src="<? echo theme_url('assets/images/placeholder/large_blank.png')?>" alt="Article 1"/>
                            </div>
                            <span class="tile-date redtxt"><span class="date">09</span><span class="month">July</span></span>
                            <span class="tile-cat red">Illustration</span>
                        </div>
                    </a>
                    <!-- Lightbox Article Preview -->
                    <div class="tile-pre">
                        <article id="article-1" class="lb-article" data-lbcolor="#e61400">
                            <div class="article-img">
                                <div class="flexslider postslide">
                                    <ul class="slides">
                                        <li> 
                                            <img class="tile-pre-img" src="<? echo theme_url('assets/images/placeholder/blog_pre_blank.png')?>" alt="Article 1" />
                                        </li>
                                        <li>
                                            <img class="tile-pre-img" src="<? echo theme_url('assets/images/placeholder/blog_pre_blank.png')?>" alt="Article 1" />
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="article-date redtxt"><span class="date">09</span><span class="month">July</span></div>
                            <h1 class="lb-title"><a href="singleblogpost-1.html">This is the title of Article 1</a></h1>
                            <span class="postcat redtxt">Illustration</span>
                            <div class="lb-excerpt">
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sagittis sollicitudin aliquet. Nullam ut sapien eros, aliquet gravida turpis. Cras nec risus magna. Morbi laoreet molestie odio sed ultrices. Maecenas eget elit orci. Etiam rhoncus urna vitae neque accumsan et vehicula dolor varius. Praesent tellus velit.</p>
                                <p><a class="exp-button" href="singleblogpost-1.html">Read More &#8594;</a></p>
                            </div>
                        </article>
                    </div>

                    <!-- Tile 2 -->
                    <a href="#article-2" class="lightbox" rel="section">
                        <div class="tile medium live" data-stops="0,75%,100%" data-speed="750" data-delay="1500">
                            <div class="live-front">  
                                <img class="live-img" src="<? echo theme_url('assets/images/placeholder/medium_blank.png')?>" alt="Article 2" />
                            </div>
                            <div class="live-back">
                                <img class="live-img" src="<? echo theme_url('assets/images/placeholder/medium_blank.png')?>" alt="Article 2" />
                            </div>
                            <span class="tile-date limetxt"><span class="date">06</span><span class="month">July</span></span>
                            <span class="tile-cat lime">Cartoon Design</span>
                        </div>
                    </a>
                    <!-- Lightbox Article Preview -->
                    <div class="tile-pre">
                        <article id="article-2" class="lb-article" data-lbcolor="#8cbe29">
                            <div class="article-img">
                                <div class="flexslider postslide">
                                    <ul class="slides">
                                        <li> 
                                            <img class="tile-pre-img" src="<? echo theme_url('assets/images/placeholder/blog_pre_blank.png')?>" alt="Article Two" />
                                        </li>
                                        <li>
                                            <img class="tile-pre-img" src="<? echo theme_url('assets/images/placeholder/blog_pre_blank.png')?>" alt="Article Two" />
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="article-date limetxt"><span class="date">06</span><span class="month">July</span></div>
                            <h1 class="lb-title"><a href="singleblogpost-1.html">This is the title of Article Two</a></h1>
                            <span class="postcat limetxt">Cartoon Design</span>
                            <div class="lb-excerpt">
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sagittis sollicitudin aliquet. Nullam ut sapien eros, aliquet gravida turpis. Cras nec risus magna. Morbi laoreet molestie odio sed ultrices. Maecenas eget elit orci. Etiam rhoncus urna vitae neque accumsan et vehicula dolor varius. Praesent tellus velit.</p>
                                <p><a class="exp-button" href="singleblogpost-1.html">Read More &#8594;</a></p>
                            </div>
                        </article>
                    </div>

                    <!-- Tile 3 -->
                    <a href="#portfolio-1" class="lightbox" rel="section">
                        <div class="tile small"> 
                            <img class="live-img" src="<? echo theme_url('assets/images/placeholder/small_blank.png')?>" alt="Project One"/>
                        </div>
                    </a>
                    <!-- Lightbox Article Preview -->
                    <div class="tile-pre">
                        <article id="portfolio-1" class="lb-portfolio" data-lbcolor="#e61400">
                            <div class="portfolio-img">  
                                <img class="tile-pre-img" src="<? echo theme_url('assets/images/placeholder/portfolio_pre_blank.png')?>" alt="Project One" />
                            </div>
                            <div class="lb-port-cont">
                                <h1 class="lb-project"><a href="singleportfolio.html">Project One</a></h1>
                                <span class="projectcat redtxt">Illustration</span>
                                <div class="lb-desc">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sagittis sollicitudin aliquet. Nullam ut sapien eros, aliquet gravida turpis. Cras nec risus magna. Morbi laoreet molestie odio sed ultrices. Maecenas eget elit orci. Etiam rhoncus urna vitae neque accumsan et vehicula dolor varius. Praesent tellus velit.</p>
                                    <p><a class="exp-button" href="singleportfolio.html">View More &#8594;</a></p>
                                </div>
                            </div>
                        </article>
                    </div>

                    <!-- Tile 4 -->
                    <a href="#portfolio-2" class="lightbox" rel="section">
                        <div class="tile small">
                            <img class="live-img" src="<? echo theme_url('assets/images/placeholder/small_blank.png')?>" alt="Project Two"/>
                        </div>
                    </a>
                    <!-- Lightbox Article Preview -->
                    <div class="tile-pre">
                        <article id="portfolio-2" class="lb-portfolio" data-lbcolor="#00aaad">
                            <div class="portfolio-img">
                                <img class="tile-pre-img" src="<? echo theme_url('assets/images/placeholder/portfolio_pre_blank.png')?>" alt="Project Two" />
                            </div>
                            <div class="lb-port-cont">
                                <h1 class="lb-project"><a href="singleportfolio.html">Project Two</a></h1>
                                <span class="projectcat tealtxt">Graphic Design</span>
                                <div class="lb-desc">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sagittis sollicitudin aliquet. Nullam ut sapien eros, aliquet gravida turpis. Cras nec risus magna. Morbi laoreet molestie odio sed ultrices. Maecenas eget elit orci. Etiam rhoncus urna vitae neque accumsan et vehicula dolor varius. Praesent tellus velit.</p>
                                    <p><a class="exp-button" href="singleportfolio.html">View More &#8594;</a></p>
                                </div>
                            </div>
                        </article>
                    </div>

                    <!-- Tile 5 -->
                    <a href="#portfolio-3" class="lightbox" rel="section">
                        <div class="tile small">
                            <img class="live-img" src="<? echo theme_url('assets/images/placeholder/small_blank.png')?>" alt="Project Three"/>
                        </div>
                    </a>
                    <!-- Lightbox Article Preview -->
                    <div class="tile-pre">
                        <article id="portfolio-3" class="lb-portfolio" data-lbcolor="#e61400">
                            <div class="portfolio-img">
                                <img class="tile-pre-img" src="<? echo theme_url('assets/images/placeholder/portfolio_pre_blank.png')?>" alt="Project Three" />
                            </div>
                            <div class="lb-port-cont">
                                <h1 class="lb-project"><a href="singleportfolio.html">Project Three</a></h1>
                                <span class="projectcat redtxt">Illustration</span>
                                <div class="lb-desc">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sagittis sollicitudin aliquet. Nullam ut sapien eros, aliquet gravida turpis. Cras nec risus magna. Morbi laoreet molestie odio sed ultrices. Maecenas eget elit orci. Etiam rhoncus urna vitae neque accumsan et vehicula dolor varius. Praesent tellus velit.</p>
                                    <p><a class="exp-button" href="singleportfolio.html">View More &#8594;</a></p>
                                </div>
                            </div>
                        </article>
                    </div>

                    <!-- Tile 6 -->
                    <a href="#quotation-1" class="lightbox" rel="section">
                        <div class="tile small live" data-mode="flip" data-stops="100%" data-speed="750" data-delay="4000">
                            <div class="live-front">
                                <img class="live-img" src="<? echo theme_url('assets/images/articles/quotation_1.png')?>" alt="Quotation" />
                            </div>
                            <div class="live-back">
                                <img class="live-img" src="<? echo theme_url('assets/images/articles/quotation_2.png')?>" alt="Quotation" />
                            </div>
                        </div>
                    </a>
                    <!-- Lightbox Article Preview -->
                    <div class="tile-pre">
                        <article id="quotation-1" class="lb-article">
                            <div class="lb-quote">
                                The person who reads too much and uses his brain too little will fall into lazy habits of thinking.
                                <div class="quote-author">&mdash; Albert Einstein</div>
                            </div>
                        </article>
                    </div>

                    <!-- Tile 7 -->
                    <a href="#portfolio-4" class="lightbox" rel="section">
                        <div class="tile small">
                            <img class="live-img" src="<? echo theme_url('assets/images/placeholder/small_blank.png')?>" alt="Project Four"/>
                        </div>
                    </a>
                    <!-- Lightbox Article Preview -->
                    <div class="tile-pre">
                        <article id="portfolio-4" class="lb-portfolio" data-lbcolor="#00aaad">
                            <div class="portfolio-img">
                                <img class="tile-pre-img" src="<? echo theme_url('assets/images/placeholder/portfolio_pre_blank.png')?>" alt="Project Four" />
                            </div>
                            <div class="lb-port-cont">
                                <h1 class="lb-project"><a href="singleportfolio.html">Project Four</a></h1>
                                <span class="projectcat tealtxt">Graphic Design</span>
                                <div class="lb-desc">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sagittis sollicitudin aliquet. Nullam ut sapien eros, aliquet gravida turpis. Cras nec risus magna. Morbi laoreet molestie odio sed ultrices. Maecenas eget elit orci. Etiam rhoncus urna vitae neque accumsan et vehicula dolor varius. Praesent tellus velit.</p>
                                    <p><a class="exp-button" href="singleportfolio.html">View More &#8594;</a></p>
                                </div>
                            </div>
                        </article>
                    </div>

                    <!-- Tile 8 -->
                    <a href="#portfolio-5" class="lightbox" rel="section">
                        <div class="tile small">
                            <img class="live-img" src="<? echo theme_url('assets/images/placeholder/small_blank.png')?>" alt="Project Five"/>
                        </div>
                    </a>
                    <!-- Lightbox Article Preview -->
                    <div class="tile-pre">
                        <article id="portfolio-5" class="lb-portfolio" data-lbcolor="#00aaad">
                            <div class="portfolio-img">
                                <img class="tile-pre-img" src="<? echo theme_url('assets/images/placeholder/portfolio_pre_blank.png')?>" alt="Project Five" />
                            </div>
                            <div class="lb-port-cont">
                                <h1 class="lb-project"><a href="singleportfolio.html">Project Five</a></h1>
                                <span class="projectcat tealtxt">Graphic Design</span>
                                <div class="lb-desc">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sagittis sollicitudin aliquet. Nullam ut sapien eros, aliquet gravida turpis. Cras nec risus magna. Morbi laoreet molestie odio sed ultrices. Maecenas eget elit orci. Etiam rhoncus urna vitae neque accumsan et vehicula dolor varius. Praesent tellus velit.</p>
                                    <p><a class="exp-button" href="singleportfolio.html">View More &#8594;</a></p>
                                </div>
                            </div>
                        </article>
                    </div>

                    <!-- Tile 9 -->
                    <div class="tile small live exclude" data-stops="0,100%" data-speed="1000" data-delay="1500">
                        <div class="live-front red">
                            <span class="tile-text">Solid Color</span>
                        </div>
                        <div class="live-back green">
                            <span class="tile-text">No Hover Effect</span>
                        </div>
                    </div>

                    <!-- Tile 10 -->
                    <a href="#video-1" class="lightbox" rel="section">
                        <div class="tile small live" data-mode="flip" data-stops="100%" data-speed="750" data-delay="3000">
                            <div class="live-front">
                                <img class="live-img" src="<? echo theme_url('assets/images/video.png')?>" alt="Video 1" />
                            </div>
                            <div class="live-back blue">
                                <img class="live-img" src="<? echo theme_url('assets/images/video.png')?>" alt="Video Icon" />
                            </div>
                        </div>
                    </a>
                    <!-- Lightbox Article Preview -->
                    <div class="tile-pre"> 
                        <article id="video-1" class="lb-article" data-lbcolor="#19a2de">  
                            <div class="lb-video"> 
                                <iframe src="http://player.vimeo.com/video/3114617?loop=1" width="640" height="272"></iframe> <p><a href="http://vimeo.com/3114617">SCINTILLATION</a> from <a href="http://vimeo.com/chassaingxavier">Xavier Chassaing</a> on <a href="http://vimeo.com">Vimeo</a>.</p> <p>This is an experimental film made up of over 35,000 photographs. It combines an innovative mix of stop motion and live projection mapping techniques. <br /> <br /> Directed by<br /> chassaing.xavier@gmail.com<br /> <br /> Music by <br /> http://www.myspace.com/fedaden</p>
                            </div>
                        </article>
                    </div>

                    <!-- Tile 11 -->
                    <a href="#portfolio-6" class="lightbox" rel="section">
                        <div class="tile small">
                            <img class="live-img" src="<? echo theme_url('assets/images/placeholder/small_blank.png')?>" alt="Project Six"/>
                        </div>
                    </a>
                    <!-- Lightbox Article Preview -->
                    <div class="tile-pre">
                        <article id="portfolio-6" class="lb-portfolio" data-lbcolor="#e61400">
                            <div class="portfolio-img">
                                <img class="tile-pre-img" src="<? echo theme_url('assets/images/placeholder/portfolio_pre_blank.png')?>" alt="Project Six" />
                            </div>
                            <div class="lb-port-cont">
                                <h1 class="lb-project"><a href="singleportfolio.html">Project Six</a></h1>
                                <span class="projectcat redtxt">Illustration</span>
                                <div class="lb-desc">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sagittis sollicitudin aliquet. Nullam ut sapien eros, aliquet gravida turpis. Cras nec risus magna. Morbi laoreet molestie odio sed ultrices. Maecenas eget elit orci. Etiam rhoncus urna vitae neque accumsan et vehicula dolor varius. Praesent tellus velit.</p>
                                    <p><a class="exp-button" href="singleportfolio.html">View More &#8594;</a></p>
                                </div>
                            </div>
                        </article>
                    </div>

                    <!-- Tile 12 -->
                    <div class="tile large live exclude" data-stack="true" data-stops="0,18%" data-speed="1000" data-delay="3000">
                        <div class="live-front themecolor">
                            <ul id="tweeter"></ul>
                        </div>
                        <div class="live-back themecolor">
                            <span class="tile-text tweeter">Twitter</span>
                        </div>
                    </div>

                    <!-- Tile 13 -->
                    <a href="#article-3" class="lightbox" rel="section">
                        <div class="tile medium">
                            <img class="live-img" src="<? echo theme_url('assets/images/placeholder/medium_blank.png')?>" alt="Article 3" />
                            <span class="tile-date tealtxt"><span class="date">01</span><span class="month">July</span></span>
                            <span class="tile-cat teal">Graphic Design</span>
                        </div>
                    </a>
                    <!-- Lightbox Article Preview -->
                    <div class="tile-pre">
                        <article id="article-3" class="lb-article" data-lbcolor="#00aaad">
                            <div class="article-img">
                                <img class="tile-pre-img" src="<? echo theme_url('assets/images/placeholder/blog_pre_blank.png')?>" alt="Article Three" />
                            </div>
                            <div class="article-date tealtxt"><span class="date">01</span><span class="month">July</span></div>
                            <h1 class="lb-title"><a href="singleblogpost-1.html">This is the title of Article Three</a></h1>
                            <span class="postcat tealtxt">Graphic Design</span>
                            <div class="lb-excerpt">
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sagittis sollicitudin aliquet. Nullam ut sapien eros, aliquet gravida turpis. Cras nec risus magna. Morbi laoreet molestie odio sed ultrices. Maecenas eget elit orci. Etiam rhoncus urna vitae neque accumsan et vehicula dolor varius. Praesent tellus velit.</p>
                                <p><a class="exp-button" href="singleblogpost-1.html">Read More &#8594;</a></p>
                            </div>
                        </article>
                    </div>

                    <!-- Tile 14 -->
                    <a href="#portfolio-7" class="lightbox" rel="section">
                        <div class="tile small">
                            <img class="live-img" src="<? echo theme_url('assets/images/placeholder/small_blank.png')?>" alt="Project Seven"/>
                        </div>
                    </a>
                    <!-- Lightbox Article Preview -->
                    <div class="tile-pre">
                        <article id="portfolio-7" class="lb-portfolio" data-lbcolor="#e61400">
                            <div class="portfolio-img">
                                <img class="tile-pre-img" src="<? echo theme_url('assets/images/placeholder/portfolio_pre_blank.png')?>" alt="Project Seven" />
                            </div>
                            <div class="lb-port-cont">
                                <h1 class="lb-project"><a href="singleportfolio.html">Project Seven</a></h1>
                                <span class="projectcat redtxt">Illustration</span>
                                <div class="lb-desc">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sagittis sollicitudin aliquet. Nullam ut sapien eros, aliquet gravida turpis. Cras nec risus magna. Morbi laoreet molestie odio sed ultrices. Maecenas eget elit orci. Etiam rhoncus urna vitae neque accumsan et vehicula dolor varius. Praesent tellus velit.</p>
                                    <p><a class="exp-button" href="singleportfolio.html">View More &#8594;</a></p>
                                </div>
                            </div>
                        </article>
                    </div>

                    <!-- Tile 15 -->
                    <a href="http://validator.w3.org/check?uri=referer">
                        <div class="tile small live" data-stack="true" data-stops="0,100%" data-speed="750" data-delay="2500">
                            <div class="live-front mango">
                                <img class="live-img" src="<? echo theme_url('assets/images/articles/html5.png')?>" alt="HTML5 Icon" />
                            </div>
                            <div class="live-back lime">
                                <img class="live-img"src="<? echo theme_url('assets/images/hyperlink')?>" alt="Hyperlink Icon" />
                            </div>
                        </div>
                    </a>

                    <!-- Tile 16 -->
                    <a href="#portfolio-8" class="lightbox" rel="section">
                        <div class="tile small">
                            <img class="live-img" src="<? echo theme_url('assets/images/placeholder/small_blank.png')?>" alt="Project Seven"/>
                        </div>
                    </a>
                    <!-- Lightbox Article Preview -->
                    <div class="tile-pre">
                        <article id="portfolio-8" class="lb-portfolio" data-lbcolor="#00aaad">
                            <div class="portfolio-img">
                                <img class="tile-pre-img" src="<? echo theme_url('assets/images/placeholder/portfolio_pre_blank.png')?>" alt="Project Eight" />
                            </div>
                            <div class="lb-port-cont">
                                <h1 class="lb-project"><a href="singleportfolio.html">Project Eight</a></h1>
                                <span class="projectcat tealtxt">Graphic Design</span>
                                <div class="lb-desc">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sagittis sollicitudin aliquet. Nullam ut sapien eros, aliquet gravida turpis. Cras nec risus magna. Morbi laoreet molestie odio sed ultrices. Maecenas eget elit orci. Etiam rhoncus urna vitae neque accumsan et vehicula dolor varius. Praesent tellus velit.</p>
                                    <p><a class="exp-button" href="singleportfolio.html">View More &#8594;</a></p>
                                </div>
                            </div>
                        </article>
                    </div>

                    <!-- END TILE CONTENT -->
                </section><!-- end #content-mos -->

                <!-- BEGIN AJAX PAGINATION -->
                <div class="clearfix ajax-pagination">
                    <a href="index2.html" class="next"></a>
                </div>
                <!-- END AJAX PAGINATION -->

            </section><!-- end #mainpage-mos -->


            <section class="mainpage">
                <!-- BEGIN TOGGLE CONTENT -->
                <div class="toggle-button"><span class="toggle-indicator">+</span></div>

                <div class="toggle-content close clearfix">
                    <!-- Item 1 -->
                    <div class="fixed-medium">
                        <div class="highlights">
                            <img class="themecolor" src="<? echo theme_url('assets/images/responsive')?>" alt="Responsive Design" />
                        </div>
                        <div class="highlights-txt">
                            <h2>Responsive Design</h2>
                            <p>The template will automatically resize to fit the browser according to its width. So, this template works not just on your desktop monitor, but your tablet or mobile phone as well!</p>
                        </div>
                    </div>
                    <!-- Item 2 -->
                    <div class="fixed-medium">
                        <div class="highlights">
                            <img class="themecolor" src="<? echo theme_url('assets/images/livetiles')?>" alt="Live Tiles" />
                        </div>
                        <div class="highlights-txt">
                            <h2>Live Tiles</h2>
                            <p>As inspired by Metro UI, these 'Live' tiles can display more information without utilizing more screen space. Hence, it is not just the perfect solution for small-screened mobile devices, but also attractive.</p>
                        </div>
                    </div>
                    <!-- Item 3 -->
                    <div class="fixed-medium last">
                        <div class="highlights">
                            <img class="themecolor" src="<? echo theme_url('assets/images/customizability')?>" alt="Customizability" />
                        </div>
                        <div class="highlights-txt">
                            <h2>Customizability</h2>
                            <p>Comes pre-loaded with 10 colours and easy-to-use colour tags, as well as multiple-sized tiles which automatically arrange themselves to fit the screen, you can create any layout you can imagine.</p>
                        </div>
                    </div>

                </div><!-- end .toggle-content -->
                <!-- END TOGGLE CONTENT -->

            </section>