{% extends 'default/index.html.twig' %}
{% block page_content %}

    {% for type, messages in app.session.flashbag.all() %}
        {% for message in messages %}
        <div class="flash-{{ type }}">
            {{ message }}
        </div>
        {% endfor %}
    {% endfor %}
    <div>
        {% block fos_user_content %}
        {% endblock fos_user_content %}
    </div>

{% endblock %}