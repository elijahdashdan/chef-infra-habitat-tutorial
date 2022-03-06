package "rsyslog"
package "auditd"

cookbook_file "/etc/audit/auditd.conf" do
  source "auditd.conf"
end
