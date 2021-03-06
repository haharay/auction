################################################################################
##
##   Copyright (C) 2017-2018 Keith O'Hara
##
##   This file is part of the R package auction.
##
##   The R package auction is free software: you can redistribute it and/or modify
##   it under the terms of the GNU General Public License as published by
##   the Free Software Foundation, either version 2 of the License, or
##   (at your option) any later version.
##
##   The R package auction is distributed in the hope that it will be useful,
##   but WITHOUT ANY WARRANTY; without even the implied warranty of
##   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
##   GNU General Public License for more details.
##
##   You should have received a copy of the GNU General Public License
##   along with auction. If not, see <http://www.gnu.org/licenses/>.
##
################################################################################

auction <- function(Phi, demand, supply, algorithm=1, max_prob=TRUE, 
                    eps_init = - 1.0, eps_min = - 1.0,
                    run_bellman_ford=FALSE, bf_upper_prices=TRUE, verbose=TRUE)
{
    # note: eps_init and/or eps_min set to < 0 will lead to default values
    res <- .Call("auction_R", Phi,demand,supply,algorithm,max_prob,
                 eps_init,eps_min,run_bellman_ford,bf_upper_prices,verbose,
                 PACKAGE = "auction.Rcpp")
    
    return(res)
}
