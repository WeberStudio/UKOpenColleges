           <div class="row">
      <div class="fifteen columns" id="page-title">
        <a class="back" href="javascript:history.back()"></a>
        <div class="subtitle">
            Some page subtitle        </div>

                <h1 class="page-title">
            Contacts page        </h1>

        <div class="breadcrumbs"><a href="http://theme.crumina.net/onetouch">Home</a> <span class="delim">/</span> Contacts page</div>


      </div>

      <div class="fifteen columns"><div class="line"> </div></div>

    </div>

<div id="content">

  <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>

  <div class="team row">


      

        <div class="team-brick five columns">
          <div class="bg">
            <a href="http://theme.crumina.net/onetouch/contacts-page/ivan-petrov-designer/">
              <img src="images/uploads/397209-140x140.jpg" alt="Georgia Frie, designer"/>
            </a>
            <div class="desc">
              <h4><a href="http://theme.crumina.net/onetouch/contacts-page/ivan-petrov-designer/">Georgia Frie, designer</a></h4>
              <p>sectetur adipiscing elit. Donec iaculis metus vitae ligula elementum ut luctus lorem facilisis.</p>
            </div>
          </div>
        </div>

          

        <div class="team-brick five columns">
          <div class="bg">
            <a href="http://theme.crumina.net/onetouch/contacts-page/loren-anderson-developer/">
              <img src="images/uploads/378743-140x140.jpg" alt="Max Pain, developer"/>
            </a>
            <div class="desc">
              <h4><a href="http://theme.crumina.net/onetouch/contacts-page/loren-anderson-developer/">Max Pain, developer</a></h4>
              <p>sectetur adipiscing elit. Donec iaculis metus vitae ligula elementum ut luctus lorem facilisis.</p>
            </div>
          </div>
        </div>

          

        <div class="team-brick five columns">
          <div class="bg">
            <a href="http://theme.crumina.net/onetouch/contacts-page/anna-egorova-director/">
              <img src="images/uploads/409277-140x140.jpg" alt="John Doe, director"/>
            </a>
            <div class="desc">
              <h4><a href="http://theme.crumina.net/onetouch/contacts-page/anna-egorova-director/">John Doe, director</a></h4>
              <p>sectetur adipiscing elit. Donec iaculis metus vitae ligula elementum ut luctus lorem facilisis.</p>
            </div>
          </div>
        </div>

          
  </div>
  <div class="row"><div class="fifteen columns">
                  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec iaculis metus vitae ligula elementum ut luctus lorem facilisis. Sed non leo nisl, ac euismod nisi. Aenean augue dolor, facilisis id fringilla ut, tempus vitae nibh. Nullam nec diam risus. Donec laoreet ultricies rhoncus. Aliquam adipiscing,… </p>

        </div></div>
  <div class="row">



    <div class="fifteen columns">
      <div id="map"></div>
            <script type="text/javascript">
			$(document).ready(function(){
  initialize();
});
  var directionDisplay;
  var directionsService = new google.maps.DirectionsService();
  function initialize() {
    var latlng = new google.maps.LatLng(51.764696,5.526042);
    directionsDisplay = new google.maps.DirectionsRenderer();
    var myOptions = {
      zoom: 14,
      center: latlng,
      mapTypeId: google.maps.MapTypeId.ROADMAP,
      mapTypeControl: false
    };
    var map = new google.maps.Map(document.getElementById("map"),myOptions);
    directionsDisplay.setMap(map);
    directionsDisplay.setPanel(document.getElementById("directionsPanel"));
    var marker = new google.maps.Marker({
      position: latlng,
      map: map,
	  scrollwheel: false,
      title:"My location"
    });
  }
  function calcRoute() {
    var start = document.getElementById("routeStart").value;
    var end = "51.764696,5.526042";
    var request = {
      origin:start,
      destination:end,
      travelMode: google.maps.DirectionsTravelMode.DRIVING
    };
    directionsService.route(request, function(response, status) {
      if (status == google.maps.DirectionsStatus.OK) {
        directionsDisplay.setDirections(response);
      }
    });
  }
</script>

    </div>

    <div class="five columns">
                <h3>Contact info</h3>
<p>Address: Street 9890, New Something 1234, Country<br />
Telephone: 1234 5678<br />
Fax: 9876 5432</p>
<h3>Support info</h3>
<p>Telephone: 1234 5678<br />
Fax: 9876 5432<br />
Email: <a title="[GMCP] Compose a new mail to ouremail@planetearth.com" onclick="window.open('https://mail.google.com/mail/u/0/?view=cm&amp;fs=1&amp;tf=1&amp;to=ouremail@planetearth.com', null, 'width=640,height=580,scrollbars=yes');return false" href="mailto:ouremail@planetearth.com" rel="noreferrer">ouremail@planetearth.com</a></p>

            </div>


    <div class="ten columns">
           <h3>Leave a reply</h3>

        <form action="" method="POST" name="contact_feedback" id="contact_feedback" class="contact-form">
            <div class="fields">
                <label for="sender_name">Name</label>
                <input type="text" class="text" name="sender_name" id="sender_name" />
                <label for="sender_email">E-mail</label>
                <input id="sender_email" name="sender_email" class="text span4" type="text" />
                <label>My letter topic is:</label>
                <input class="text span4"  type="text" name="letter_subject" id="letter_subject" />
            </div>

            <textarea  name="letter_text" id="letter_text" cols="30" rows="10" placeholder="" tabindex="4"></textarea>
            <input type="submit" class="button right" tabindex="5" value="Send message" />
            <input type="checkbox" id="agree" style="display:none;" />
            <label for="antispam_answer" style="float:left; width:300px; margin-top:13px; margin-right:20px;">How many legs does elephant have (number)?</label><input class="text" style="width:331px; float:left;"  type="text" name = "antispam_answer" id="antispam_answer" />        </form>
        
        <script type="text/javascript">
            jQuery(document).ready(function($){

                $("#sender_email,#sender_name,#letter_subject,#letter_text").on("keydown", function(){
                    if( $(this).css("color") == "rgb(255, 0, 0)" )
                        $(this).css("color","#000000").val("");
                });

                $("#contact_feedback input[type=submit]").on("click", function(){
                    if( $("#sender_email").css("color") == "rgb(255, 0, 0)") $("#sender_email").val("");
                    if( $("#sender_name").css("color") == "rgb(255, 0, 0)") $("#sender_name").val("");
                    if( $("#letter_subject").css("color") == "rgb(255, 0, 0)") $("#letter_subject").val("");
                    if ($("#letter_text").css("color") == "rgb(255, 0, 0)") $("#letter_text").val("");
                });

                $("#contact_feedback").validate({
                    submitHandler: function(form) {
                        form.submit();
                    },
                    rules: {
                        sender_email: {
                            required: true,
                            email: true
                        },
                        sender_name: {
                            required:true
                        },
                        letter_subject: {
                            required:true
                        },
                        letter_text: {
                            required:true
                        }
                    },
                    messages: {
                        sender_email: {
                            required: "Type your email!",
                            email: "Email is incorect"
                        },
                        sender_name: {
                            required:"Type your name!"
                        },
                        letter_subject: {
                            required:"Type the subject!"
                        },
                        letter_text: {
                            required:"Type the message!"
                        }
                    },
                    errorPlacement: function(error, element) {
                        //element.css("color","red").val(error.html());
                    },
                    invalidHandler: function(form, validator) {
                        for(z in validator['errorList'] ){
                            var element = validator['errorList'][z]['element'];
                            var message = validator['errorList'][z]['message'];
                            jQuery(element).css("color","red").val(message);
                        }
                    }
                });
            });
        </script>
            </div>
  </div>

</div>  </div>
  </div>
  <div id="darkf">
</div>




