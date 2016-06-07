hf = .025
a = 1/3
y = 1/3
b = 4/3
z = 1
c = (a+z)/2
d = (b+y)/2

p = function (w,x) {
((w^x)*2.718^-w)/(factorial(x))
}

draw = p(c,0)*p(d,0)+p(c,1)*p(d,1)+p(c,2)*p(d,2)+p(c,3)*p(d,3)+p(c,4)*p(d,4)+p(c,5)*p(d,5)

home = p(c,5)*p(d,4)+p(c,5)*p(d,3)+p(c,5)*p(d,3)+p(c,5)*p(d,2)+p(c,5)*p(d,1)+p(c,5)*p(d,0) +
  p(c,4)*p(d,3)+p(c,4)*p(d,2)+p(c,4)*p(d,1)+p(c,4)*p(d,0) +
  p(c,3)*p(d,2)+p(c,3)*p(d,1)+p(c,3)*p(d,0) +
  p(c,2)*p(d,1)+p(c,2)*p(d,0) +
  p(c,1)*p(d,0)

away = p(d,5)*p(c,4)+p(d,5)*p(c,3)+p(d,5)*p(c,3)+p(d,5)*p(c,2)+p(d,5)*p(c,1)+p(d,5)*p(c,0) +
  p(d,4)*p(c,3)+p(d,4)*p(c,2)+p(d,4)*p(c,1)+p(d,4)*p(c,0) +
  p(d,3)*p(c,2)+p(d,3)*p(c,1)+p(d,3)*p(c,0) +
  p(d,2)*p(c,1)+p(d,2)*p(c,0) +
  p(d,1)*p(c,0)

tot = draw + home + away
dtot = draw/tot
htot = (home/tot)*(1+hf)
atot = (away/tot)*(1-hf)
cat("Home: ",htot)
cat("Away: ",atot)
cat("Draw: ",dtot)