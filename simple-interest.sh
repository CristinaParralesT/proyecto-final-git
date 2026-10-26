#!/bin/bash
# Simple Interest Calculator
# Formula: SI = (P * R * T) / 100

echo "=== Simple Interest Calculator ==="

read -p "Enter the principal amount (P): " principal
read -p "Enter the interest rate in % (R): " rate
read -p "Enter the time period in years (T): " time

interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)
total=$(echo "scale=2; $principal + $interest" | bc)

echo "Principal: $principal"
echo "Rate: $rate%"
echo "Time: $time years"
echo "Simple Interest: $interest"
echo "Total amount: $total"
