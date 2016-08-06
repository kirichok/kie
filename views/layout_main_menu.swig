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
        {% for item in menu %}
        <li>
            {% if item.subitems %}
            <i class="fa fa-bars more"></i>
            <i class="fa {{ item.icon }}"></i>
            <span>{{ item.name }}</span>
            <ul class="menu">
                {% for subitem in item.subitems %}
                <li><i class="fa {{ subitem.icon }}"></i><a href="{{ subitem.href }}">{{ subitem.name }}</a></li>
                {% endfor %}
            </ul>
            {% else %}
            <i class="fa fa-bars {{ item.icon }}"></i>
            <a href="{{ item.href }}">{{ item.name }}</a>
            {% endif %}
        </li>
        {% endfor %}
    </ul>
</div>