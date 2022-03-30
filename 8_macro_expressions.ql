import cpp

from MacroInvocation marco_invocation
where marco_invocation.getMacroName() in ["ntohs", "ntohl", "ntohll"]
select marco_invocation.getExpr()
