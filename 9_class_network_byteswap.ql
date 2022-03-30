import cpp

class NetworkByteSwap extends Expr {
    NetworkByteSwap() {
        exists(MacroInvocation macro_inv |
            this = macro_inv.getExpr() and
            macro_inv.getMacroName() in ["ntohs", "ntohl", "ntohll"]
        )
    }
}

from NetworkByteSwap n
select n, "Network byte swap"