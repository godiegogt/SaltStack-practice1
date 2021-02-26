install_apache:
  pkg.installed:
    - pkgs:
      - httpd

apache_service:
  service.running:
    - name: httpd
    - enable: True
    
index_html:
  file.managed:
    - name: /var/www/html/index.html
    - user: godiego
    - group: godiego
    - mode: 644
    - source: salt://apache/templates/index.html