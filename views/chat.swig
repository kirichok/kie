{% extends 'layouts/main.swig' %}
{% block css %}
{% endblock %}
{% block js %}
<script src="js/chatClient.js"></script>
{% endblock %}
{% block content %}

<div class="col-sm-12 col-md-4">
    <div class="chat-mini decor-default" data-height-col="" style="height: 560px;">
        <h6 class="p-t-md p-l-md">Mini Chat</h6>

        <div class="chat-window">
            <div class="chat-messages chat-messages-scroll" tabindex="5000" style="overflow: hidden; outline: none;">
                <ol class="chat-messages-list" style="transform: matrix(1, 0, 0, 1, 0, 0);">
                    <li class="chat-message chat-message-friend">
                        <div class="chat-message-bubble">
                            Hey
                        </div>
                    </li>
                    <li class="chat-message chat-message-self">
                        <div class="chat-message-bubble" style="transform: translate3d(0px, 0px, 0px); opacity: 1;">
                            bjhh
                        </div>
                    </li>
                </ol>
            </div>
            <div class="chat-input-bar">
                <div class="chat-info-container">

                </div>
                <div class="chat-effect-container" style="-webkit-filter: none; filter: none;">
                    <div class="chat-effect-bar"></div>
                </div>
                <div class="chat-input-wrapper">
                    <button type="button" class="chat-input-tool">
                        <i class="icon icon-camera"></i>
                    </button>
                    <div class="chat-input" contenteditable=""></div>
                    <button type="button" class="chat-send">
                        <i class="fa fa-paper-plane" style="transform: translate3d(0px, 0px, 0px);"></i>
                    </button>
                </div>
            </div>
        </div>
        <svg xmlns="http://www.w3.org/2000/svg" version="1.1" width="800" style="display: none;">
            <defs>
                <filter id="goo4">
                    <feGaussianBlur in="SourceGraphic" stdDeviation="10" result="blur"></feGaussianBlur>
                    <feColorMatrix in="blur" values="1 0 0 0 0  0 1 0 0 0  0 0 1 0 0  0 0 0 19 -9"
                                   result="goo"></feColorMatrix>
                    <feComposite in="SourceGraphic" in2="goo"></feComposite>
                </filter>
            </defs>
        </svg>
    </div>
</div>


{% endblock%}