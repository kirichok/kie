<div class="aside">
    <a href="index.html" class="btn-logo"></a>
    <span class="menu-btn-open" id="menu-btn-open">Menu</span>
    <span class="toggle-fixed fa fa-thumb-tack" data-toggle="tooltip" data-placement="top" title="Fixed top"></span>
</div>
<nav id="main-menu" class="main-menu">
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
        {% for item in menu -%}
        <li alias="{{ item.alias }}">
            {% if item.subitems -%}
            <i class="fa fa-bars more"></i>
            <i class="fa {{ item.icon }}"></i>
            <span>{{ item.name }}</span>
            <ul class="menu">
                {% for subitem in item.subitems -%}
                <li><i class="fa {{ subitem.icon }}"></i><a href="{{ subitem.href }}">{{ subitem.name }}</a></li>
                {% endfor -%}
            </ul>
            {% else -%}
            <i class="fa fa-bars {{ item.icon }}"></i>
            <a href="{{ item.href }}">{{ item.name }}</a>
            {% endif -%}
        </li>
        {% endfor -%}
    </ul>
</nav>