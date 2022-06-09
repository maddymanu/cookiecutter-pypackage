Testing Extension Slugify: {{ "It's a random version" | slugify }}
Testing time extension: "{% now 'utc' %}"
"{% now 'utc', '%a, %d %b %Y %H:%M:%S' %}"

{% set is_open_source = cookiecutter.open_source_license != 'Not open source' -%}
{% for _ in cookiecutter.project_name %}={% endfor %}
{{ cookiecutter.project_name }}

Seconder "{{ cookiecutter['@cortex_inputs'] }}"
description is {{ cookiecutter.description }}

Template details are "{{ cookiecutter['@cortex_inputs']['template_details'] }}"
Template details are "{{ cookiecutter['@cortex_inputs']['template_details']['name'] }}"
Template details are "{{ cookiecutter['@cortex_inputs']['template_details']['tags'] }}"

project name 2 is {{ cookiecutter.project_name_2 }}
{% for _ in cookiecutter.project_name %}={% endfor %}

{% if is_open_source %}
.. image:: https://img.shields.io/pypi/v/{{ cookiecutter.project_slug }}.svg
        :target: https://pypi.python.org/pypi/{{ cookiecutter.project_slug }}

.. image:: https://img.shields.io/travis/{{ cookiecutter.github_username }}/{{ cookiecutter.project_slug }}.svg
        :target: https://travis-ci.com/{{ cookiecutter.github_username }}/{{ cookiecutter.project_slug }}

.. image:: https://readthedocs.org/projects/{{ cookiecutter.project_slug | replace("_", "-") }}/badge/?version=latest
        :target: https://{{ cookiecutter.project_slug | replace("_", "-") }}.readthedocs.io/en/latest/?version=latest
        :alt: Documentation Status
{%- endif %}

{% if cookiecutter.add_pyup_badge == 'y' %}
.. image:: https://pyup.io/repos/github/{{ cookiecutter.github_username }}/{{ cookiecutter.project_slug }}/shield.svg
     :target: https://pyup.io/repos/github/{{ cookiecutter.github_username }}/{{ cookiecutter.project_slug }}/
     :alt: Updates
{% endif %}


{{ cookiecutter.project_short_description }}

{% if is_open_source %}
* Free software: {{ cookiecutter.open_source_license }}
* Documentation: https://{{ cookiecutter.project_slug | replace("_", "-") }}.readthedocs.io.
{% endif %}

Features
--------


{% for extension, details in cookiecutter['@cortex_inputs'] |dictsort %}
<dl>
  <dt>Extension:</dt>
  <dd>{{ extension }}</dd>

  <dt>Applications:</dt>
</dl>
{% endfor %}



* TODO



Dictionary Testing:











