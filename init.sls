update_minion_config:
  file.replace:
    - name: /etc/salt/minion
    - pattern: "^master: .*$"
    - repl: |
        master:
          - master1.example.com
          - master2.example.com
    - backup: .bak
    - show_changes: True
