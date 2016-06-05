a = 1
y = 15/13
b = 10/7
z = 4/14
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
htot = (home/tot)*1.025
atot = (away/tot)*.975
cat("Home: ",htot)
cat("Away: ",atot)
cat("Draw: ",dtot)
