#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution
profit = revenue - expenses
profit

tax = round(0.30 * profit, 2)
tax

taxed = profit - tax;
taxed

margin = round(taxed / revenue, 2) * 100
margin

mean = mean(taxed)
mean

good = taxed > mean
good

bad = !good
bad

best = taxed == max(taxed)
best

worst = taxed == min(taxed)
worst

revenue.1000 = round(revenue / 1000, 0)
expenses.1000 = round(expenses / 1000, 0)
profit.1000 = round(profit / 1000, 0)
taxed.1000 = round(taxed / 1000, 0)

M = rbind(
  revenue.1000,
  expenses.1000,
  profit.1000,
  taxed.1000,
  margin,
  good,
  bad,
  best,
  worst
)
M
