;
; BIND data file for website
;
$TTL	604800
@	IN	SOA	nexustechnologies.com. root.nexustechnologies.com. (
			      2		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL
;
@	IN	NS	ns.
@	IN	A	172.16.2.2
@	IN	AAAA	::1
ns	IN	A	172.16.2.2
