<div id="wrap-menu" class="wrap-menu">
	<span id="menu-btn-close" class="menu-btn-close">
		<svg>
            <use xlink:href="#icon-close"></use>
        </svg>
	</span>

    <h1 class="menu-title">Navigation</h1>
    <ul id="menu" class="menu">
        <li id="menu-btn-back" class="back">
            <span>Back</span>
        </li>

        <!--


        -->
        {% for item in modules.module_items[modules.modules[current_module].id] %}
        <li>
            {% if modules.module_surrogates[modules.modules[current_module].id] %}
            <i class="fa fa-bars more"></i>
            <i class="fa {{ item.item_icon }}"></i>
            <span>Dashboards</span>
            <ul class="menu">
                {% for item in modules.module_items[modules.modules[current_module].id] %}
                <li><i class="fa fa-hashtag"></i><a href="index.html">Dashboard v1</a></li>

                {% endfor %}
                <li><i class="fa fa-hashtag"></i><a href="index.html">Dashboard v1</a></li>
                <li><i class="fa fa-cube"></i><a href="dashboard2.html">Dashboard v2</a></li>
            </ul>

            {% else %}
            <i class="fa fa-bars {{ item.item_icon }}"></i>
            <a href="calendar.html">Calendar</a>
            {% endif %}


        </li>
        {% endfor %}


        {% for item in modules.module_items[modules.modules[current_module].id] %}
        <li class="{% if item.access == 2 %}full_access{% elseif item.access == 1 %}read_only_access{% endif %}">
            <a href="#{{ item.camel_alias }}" aria-controls="" role="tab" data-toggle="tab"
               data-init="{{ item.camel_init_alias }}" data-check="{{ item.camel_check_alias }}"
               data-item="{{ item.module_item_id }}" access_level="{{ item.access }}">{{ item.module_item_name }}</a>
        </li>
        {% endfor %}
    </ul>
</div>


<li>
    <i class="fa fa-bars more"></i>
    <i class="fa fa-globe"></i>
    <span>Dashboards</span>
    <ul class="menu">
        <li><i class="fa fa-hashtag"></i><a href="index.html">Dashboard v1</a></li>
        <li><i class="fa fa-cube"></i><a href="dashboard2.html">Dashboard v2</a></li>
    </ul>
</li>
<li>
    <i class="fa fa-bars more"></i>
    <i class="fa fa-th"></i>
    <span>Colors</span>
    <ul class="menu">
        <li><i class="fa fa-desktop"></i><a href="index.html">Default Skin</a></li>
        <li><i class="fa fa-laptop"></i><a href="index-light.html">Light Skin</a></li>
        <li><i class="fa fa-life-ring"></i><a href="index-dark.html">Dark Skin</a></li>
        <li><i class="fa fa-image"></i><a href="index-dim.html">Dim Skin</a></li>
    </ul>
</li>
<li>
    <i class="fa fa-bars more"></i>
    <i class="fa fa-envelope-o"></i>
    <span>Mailbox</span>
    <ul class="menu">
        <li><i class="fa fa-list-ul"></i><a href="email-list.html">Email list</a></li>
        <li><i class="fa fa-inbox"></i><a href="email-inbox.html">Email inbox</a></li>
        <li><i class="fa fa-paper-plane-o"></i><a href="email-send.html">Email send</a></li>
    </ul>
</li>
<li>
    <i class="fa fa-bars more"></i>
    <i class="fa fa-server"></i>
    <span>Contacts</span>
    <ul class="menu">
        <li><i class="fa fa-mobile"></i><a href="contacts.html">Contact list</a></li>
        <li><i class="fa fa-phone"></i><a href="contact.html">Contact preview</a></li>
    </ul>
</li>
<li>
    <i class="fa fa-calendar"></i>
    <a href="calendar.html">Calendar</a>
</li>
<li>
    <i class="fa fa-th-list"></i>
    <a href="widgets.html">Widgets</a>
</li>
<li>
    <i class="fa fa-bars more"></i>
    <i class="fa fa-desktop"></i>
    <span>Ui Kits</span>
    <ul class="menu">
        <li><i class="fa fa-font"></i><a href="typography.html">Typography</a></li>
        <li><i class="fa fa-code"></i><a href="grid.html">Grid Options</a></li>
        <li><i class="fa fa-briefcase"></i><a href="buttons.html">Buttons</a></li>
        <li><i class="fa fa-check-circle-o"></i><a href="checkboxes.html">Checkboxes</a></li>
        <li><i class="fa fa-bell"></i><a href="notification.html">Notifications</a></li>
        <li><i class="fa fa-keyboard-o"></i><a href="input.html">Input Fields</a></li>
        <li><i class="fa fa-spinner"></i><a href="loading.html">Loading effect</a></li>
        <li><i class="fa fa-diamond"></i><a href="dialogs.html">Dialogs</a></li>
    </ul>
</li>
<li>
    <i class="fa fa-edit"></i>
    <a href="charts.html">Charts</a>
</li>
<li>
    <i class="fa fa-sliders"></i>
    <a href="filter.html">Filter & Cart</a>
</li>
<li>
    <i class="fa fa-list-alt"></i>
    <a href="todo.html">Todo list</a>
</li>
<li>
    <i class="fa fa-user"></i>
    <a href="profile.html">User profile</a>
</li>
<li>
    <i class="fa fa-bars more"></i>
    <i class="fa fa-file"></i>
    <span>Other pages</span>
    <ul class="menu">
        <li><i class="fa fa-magic"></i><a href="wizard.html">Wizards</a></li>
        <li><i class="fa fa-crop"></i><a href="crop.html">Crop</a></li>
        <li><i class="fa fa-picture-o"></i><a href="gallery.html">Gallery</a></li>
        <li><i class="fa fa-camera-retro"></i><a href="slider.html">Sliders</a></li>
        <li><i class="fa fa-comment"></i><a href="chat.html">Chat</a></li>
        <li><i class="fa fa-clock-o"></i><a href="timeline.html">Timeline</a></li>
        <li><i class="fa fa-book"></i><a href="register.html">Register</a></li>
        <li><i class="fa fa-sign-in"></i><a href="login.html">Log in</a></li>
        <li><i class="fa fa-unlock-alt"></i><a href="lostpassword.html">Recovery password</a></li>
        <li><i class="fa fa-cogs"></i><a href="403.html">403 error</a></li>
        <li><i class="fa fa-share-alt"></i><a href="404.html">404 error</a></li>
        <li><i class="fa fa-recycle"></i><a href="500.html">500 error</a></li>
    </ul>
</li>
</ul>
</div>