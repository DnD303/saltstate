{%for user, data in pillar.get('admin_users', {}).items()%}
user_{{ user }}:
 user.present:
  - name: {{ user }}
  - fullname: {{ data['fullname'] }}
  - shell: {{ data['shell'] }}
  - home: {{ data['home'] }}

ssh_key_{{ user }}:
 ssh_auth.present:
  - name: {{ data['ssh_key'] }}
  - user: {{ user }}

{% endfor %}
