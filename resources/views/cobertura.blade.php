@extends('template')
@section('conteudo')
<div class="text-center" style="padding-top:10px;">
    <img src="images/logo.png" alt="" style="width: 300px;">
</div>
<style>
    .row>.column {
        padding: 8px 8px;
    }

    .row:after {
        content: "";
        display: table;
        clear: both;
    }

    /* Create four equal columns that floats next to eachother */
    .column {
        float: left;
        width: 25%;
        overflow: hidden;
        height: 200px;
    }

    .column img {
        width: 100%;
        height: 200px;

    }

    /* The Modal (background) */
    .modal {
        display: none;
        position: fixed;
        z-index: 1;
        padding-top: 100px;
        left: 0;
        top: 0;
        width: 100%;
        height: 100%;
        overflow: auto;
        background-color: black;
    }

    /* Modal Content */
    .modal-content {
        position: relative;
        background-color: #fefefe;
        margin: auto;
        padding: 0;
        width: 90%;
        max-width: 1200px;
    }

    /* The Close Button */
    .close {
        color: white;
        position: absolute;
        top: 10px;
        right: 25px;
        font-size: 35px;
        font-weight: bold;
    }

    .close:hover,
    .close:focus {
        color: #999;
        text-decoration: none;
        cursor: pointer;
    }

    /* Hide the slides by default */
    .mySlides {
        display: none;
    }

    /* Next & previous buttons */
    .prev,
    .next {
        cursor: pointer;
        position: absolute;
        top: 50%;
        width: auto;
        padding: 16px;
        margin-top: -50px;
        color: white;
        font-weight: bold;
        font-size: 20px;
        transition: 0.6s ease;
        border-radius: 0 3px 3px 0;
        user-select: none;
        -webkit-user-select: none;
    }

    /* Position the "next button" to the right */
    .next {
        right: 0;
        border-radius: 3px 0 0 3px;
    }

    /* On hover, add a black background color with a little bit see-through */
    .prev:hover,
    .next:hover {
        background-color: rgba(0, 0, 0, 0.8);
    }

    /* Number text (1/3 etc) */
    .numbertext {
        color: #f2f2f2;
        font-size: 12px;
        padding: 8px 12px;
        position: absolute;
        top: 0;
    }

    /* Caption text */
    .caption-container {
        text-align: center;
        background-color: black;
        padding: 2px 16px;
        color: white;
    }

    img.demo {
        opacity: 0.6;
    }

    .active,
    .demo:hover {
        opacity: 1;
    }

    img.hover-shadow {
        transition: 0.3s;
    }

    .hover-shadow:hover {
        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
    }
</style>
<div class="contact-page-w3ls inner-padding">
    <div class="container">
        <h3 class="heading-agileinfo">Cobertura<span></span></h3>

        <!-- Images used to open the lightbox -->
        <div class="row">
            @for ($i = 1; $i < 81; $i++) @switch($i) @case(1) <div class="col-sm-12" style="margin:5px;">
                <hr>
                <h4>Pré colóquio</h4>
        </div>
        @break
        @case(5)
        <div class="col-sm-12" style="margin:5px;">
            <hr>
            <h4>Dia 21 pela manhã</h4>
        </div>
        @break
        @case(16)
        <div class="col-sm-12" style="margin:5px;">
            <hr>
            <h4>Dia 21 pela tarde</h4>
        </div>
        @break
        @case(25)
        <div class="col-sm-12" style="margin:5px;">
            <hr>
            <h4>Dia 22 pela manhã</h4>
        </div>
        @break
        @case(36)
        <div class="col-sm-12" style="margin:5px;">
            <hr>
            <h4>Dia 22 pela tarde</h4>
        </div>
        @break
        @case(52)
        <div class="col-sm-12" style="margin:5px;">
            <hr>
            <h4>Dia 23 pela manhã</h4>
        </div>
        @break
        @case(65)
        <div class="col-sm-12" style="margin:5px;">
            <hr>
            <h4>Dia 23 pela tarde</h4>
        </div>
        @break
        @case(75)
        <div class="col-sm-12" style="margin:5px;">
            <hr>
            <h4>Encerramento</h4>
        </div>
        @break




        @endswitch
        <div class="column">
            <img src="images/coloquio/{{$i}}.{{($i>=16) ? 'JPG' : 'jpg'}}" onclick="openModal();currentSlide({{$i}})" class="hover-shadow">
        </div>
        @endfor
    </div>

</div>

<!-- The Modal/Lightbox -->
<div id="myModal" class="modal">
    <span class="close cursor" onclick="closeModal()">&times;</span>
    <div class="modal-content">
        @for ($i = 1; $i < 81; $i++) <div class="mySlides">
            <div class="numbertext " style="background:black; margin:5px;">{{$i}} / 80</div>
            <img src="images/coloquio/{{$i}}.jpg" style="width:100%">
    </div>
    @endfor



    <!-- Next/previous controls -->
    <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
    <a class="next" onclick="plusSlides(1)">&#10095;</a>

    <!-- Caption text -->




</div>
</div>
</div>
</div>
</div>
<script>
    // Open the Modal
    function openModal() {
        document.getElementById("myModal").style.display = "block";
    }

    // Close the Modal
    function closeModal() {
        document.getElementById("myModal").style.display = "none";
    }

    var slideIndex = 1;
    showSlides(slideIndex);

    // Next/previous controls
    function plusSlides(n) {
        showSlides(slideIndex += n);
    }

    // Thumbnail image controls
    function currentSlide(n) {
        showSlides(slideIndex = n);
    }

    function showSlides(n) {
        var i;
        var slides = document.getElementsByClassName("mySlides");
        var dots = document.getElementsByClassName("demo");
        var captionText = document.getElementById("caption");
        if (n > slides.length) {
            slideIndex = 1
        }
        if (n < 1) {
            slideIndex = slides.length
        }
        for (i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
        }
        for (i = 0; i < dots.length; i++) {
            dots[i].className = dots[i].className.replace(" active", "");
        }
        slides[slideIndex - 1].style.display = "block";
        dots[slideIndex - 1].className += " active";
        captionText.innerHTML = dots[slideIndex - 1].alt;
    }
</script>

@stop