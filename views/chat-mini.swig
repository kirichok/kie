{% extends 'layouts/main.swig' %}
{% block css %}
{% endblock %}
{% block js %}
{% endblock %}
{% block content %}
<ol class="breadcrumb">
    <li><a href="index.html"><i class="fa fa-home"></i></a></li>
    <li class="active">Міні-чат</li>
</ol>
<div class="content container-fluid">
    <div class="row">
        <div class="col-sm-12 col-md-4 chat-mini">
            <div class="decor-default">
                <h6>Mini Chat</h6>
                <div class="chat-window">
                    <div class="chat-messages">
                        <ol class="chat-messages-list">
                            <li class="chat-message chat-message-friend">
                                <div class="chat-message-bubble">
                                    Hey
                                </div>
                            </li>
                            <li class="chat-message chat-message-friend">
                                <div class="chat-message-bubble">
                                    this is a demonstration of the gooey effect on a chat window
                                </div>
                            </li>
                            <li class="chat-message chat-message-friend">
                                <div class="chat-message-bubble">
                                    inspired by <a href="https://dribbble.com/shots/1901175-Chat-Animation">this dribbble shot</a> by <a href="https://dribbble.com/antalik">Jakub Antalík</a>
                                </div>
                            </li>
                            <li class="chat-message chat-message-friend">
                                <div class="chat-message-bubble">
                                    please type something on the field below
                                </div>
                            </li>
                            <li class="chat-message chat-message-friend">
                                <div class="chat-message-bubble">
                                    oh and press enter :0
                                </div>
                            </li>
                            <li class="chat-message chat-message-friend">
                                <div class="chat-message-bubble">
                                    Hey
                                </div>
                            </li>
                            <li class="chat-message chat-message-friend">
                                <div class="chat-message-bubble">
                                    this is a demonstration of the gooey effect on a chat window
                                </div>
                            </li>
                            <li class="chat-message chat-message-friend">
                                <div class="chat-message-bubble">
                                    inspired by <a href="https://dribbble.com/shots/1901175-Chat-Animation">this dribbble shot</a> by <a href="https://dribbble.com/antalik">Jakub Antalík</a>
                                </div>
                            </li>
                            <li class="chat-message chat-message-friend">
                                <div class="chat-message-bubble">
                                    please type something on the field below
                                </div>
                            </li>
                            <li class="chat-message chat-message-friend">
                                <div class="chat-message-bubble">
                                    oh and press enter :0
                                </div>
                            </li>
                        </ol>
                    </div>
                    <div class="chat-input-bar">
                        <div class="chat-info-container">

                        </div>
                        <div class="chat-effect-container">
                            <div class="chat-effect-bar"></div>
                        </div>
                        <div class="chat-input-wrapper">
                            <button type="button" class="chat-input-tool">
                                <i class="fa fa-paperclip fa-lg fa-flip-horizontal"></i>
                            </button>
                            <div class="chat-input" contenteditable></div>
                            <button type="button" class="chat-send">
                                <i class="fa fa-paper-plane"></i>
                            </button>
                        </div>
                    </div>
                </div>
                <svg xmlns="http://www.w3.org/2000/svg" version="1.1" width="800" style="display: none;">
                    <defs>
                        <filter id="goo">
                            <feGaussianBlur in="SourceGraphic" stdDeviation="10" result="blur" />
                            <feColorMatrix in="blur" values="1 0 0 0 0  0 1 0 0 0  0 0 1 0 0  0 0 0 19 -9" result="goo" />
                            <feComposite in="SourceGraphic" in2="goo" />
                        </filter>
                    </defs>
                </svg>
            </div>
        </div>
    </div>
</div>
{% endblock %}