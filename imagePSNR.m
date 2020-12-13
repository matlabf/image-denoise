function psnr = imagePSNR(org, new)
  R = 255;
  sqrErr = (double(new) - double(org)) .^ 2;
  mse = sum(sum(sqrErr)) / (size(org, 1) * size(org, 2));
  psnr = 10 * log10(R^2 / mse);
end
