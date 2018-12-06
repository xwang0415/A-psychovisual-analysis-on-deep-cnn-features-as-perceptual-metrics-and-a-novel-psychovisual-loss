function [out] = CSF(f)
out=2.6.*(0.0192+0.114.*f).*exp(-0.114.*f).^1.1;
