# This script was automatically generated from 
#  http://www.gentoo.org/security/en/glsa/glsa-200502-27.xml
# It is released under the Nessus Script Licence.
# The messages are release under the Creative Commons - Attribution /
# Share Alike license. See http://creativecommons.org/licenses/by-sa/2.0/
#
# Avisory is copyright 2001-2005 Gentoo Foundation, Inc.
# GLSA2nasl Convertor is copyright 2004 Michel Arboi <mikhail@nessus.org>

if (! defined_func('bn_random')) exit(0);

if (description)
{
 script_id(17153);
 script_version("$Revision: 1.3 $");
 script_xref(name: "GLSA", value: "200502-27");
 script_cve_id("CVE-2005-0372");

 desc = 'The remote host is affected by the vulnerability described in GLSA-200502-27
(gFTP: Directory traversal vulnerability)


    gFTP lacks input validation of filenames received by remote
    servers.
  
Impact

    An attacker could entice a user to connect to a malicious FTP
    server and conduct a directory traversal attack by making use of
    specially crafted filenames. This could lead to arbitrary files being
    created or overwritten.
  
Workaround

    There is no known workaround at this time.
  
References:
    http://archives.seul.org/gftp/announce/Feb-2005/msg00000.html
    http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2005-0372


Solution: 
    All gFTP users should upgrade to the latest version:
    # emerge --sync
    # emerge --ask --oneshot --verbose ">=net-ftp/gftp-2.0.18-r1"
  

Risk factor : Medium
';
 script_description(english: desc);
 script_copyright(english: "(C) 2005 Michel Arboi <mikhail@nessus.org>");
 script_name(english: "[GLSA-200502-27] gFTP: Directory traversal vulnerability");
 script_category(ACT_GATHER_INFO);
 script_family(english: "Gentoo Local Security Checks");
 script_dependencies("ssh_get_info.nasl");
 script_require_keys('Host/Gentoo/qpkg-list');
 script_summary(english: 'gFTP: Directory traversal vulnerability');
 exit(0);
}

include('qpkg.inc');
if (qpkg_check(package: "net-ftp/gftp", unaffected: make_list("ge 2.0.18-r1"), vulnerable: make_list("lt 2.0.18-r1")
)) { security_warning(0); exit(0); }
