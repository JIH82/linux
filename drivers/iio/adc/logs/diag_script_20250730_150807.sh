#!/bin/bash
echo "📋 Diagnostic Report for PLL Reference Script"
echo "Log file: ./logs/pll_ref_search_20250730_150807.log"
echo ""
echo "=== 🔍 Verifying included files existence ==="
for file in cf_axi_adc.h
ad9208/AD9208.h
ad9208/ad9208_reg.h
ad9208/api_errors.h; do
  test -f "./ad9208/$file" && echo "✅ Found: $file" || echo "❌ Missing: $file"
done
echo ""
echo "=== 🔍 Checking grep hits manually ==="
grep -niE 'pll|qpll|cpll' "./ad9208.c"
for file in ; do
  grep -niE 'pll|qpll|cpll' "$file"
done
