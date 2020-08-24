function [mmr , mmm] = minimax(M)
mmmin = min(M');
mmmax = max(M');
mmrs = min(mmmin);
mmrm = max(mmmax);

mmr = mmmax - mmmin;
mmm = mmrm - mmrs;
end