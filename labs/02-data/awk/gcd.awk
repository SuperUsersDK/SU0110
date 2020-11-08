function gcd(a,b) {
    if (a%b==0) return b
    if (b%a==0) return a
    if (a>b)  return gcd(a%b,b) 
    return gcd(a,b%a)
}

{ print "Største fælles divisor af",$1,$2,"er",gcd($1,$2) }
