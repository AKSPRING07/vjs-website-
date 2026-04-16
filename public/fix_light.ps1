$file = 'about-us-v2.html'
$content = [System.IO.File]::ReadAllText($file)

# 1. Body background: dark -> light
$content = $content.Replace('background: #08201b;' + "`r`n`t`t}", 'background: #f4f7f4;' + "`r`n`t`t}")
# Also handle LF-only variant
$content = $content.Replace('background: #08201b;' + "`n`t`t}", 'background: #f4f7f4;' + "`n`t`t}")

# 2. Hero section: dark gradient -> light gradient
$content = $content.Replace(
    'background: linear-gradient(135deg, #08201b 0%, #0d2e26 45%, #112e24 100%);',
    'background: linear-gradient(135deg, #f0f7f0 0%, #e8f4e8 45%, #f5f9f5 100%);'
)

# 3. Hero radial overlays: make lighter
$content = $content.Replace(
    'radial-gradient(ellipse 60% 50% at 80% 40%, rgba(158,192,8,0.08) 0%, transparent 65%),',
    'radial-gradient(ellipse 60% 50% at 80% 40%, rgba(158,192,8,0.14) 0%, transparent 65%),'
)
$content = $content.Replace(
    'radial-gradient(ellipse 40% 40% at 15% 70%, rgba(26,65,55,0.6) 0%, transparent 60%);',
    'radial-gradient(ellipse 40% 40% at 15% 70%, rgba(26,65,55,0.05) 0%, transparent 60%);'
)

# 4. Hero grid lines: adjust for light bg
$content = $content.Replace(
    'linear-gradient(rgba(158,192,8,0.04) 1px, transparent 1px),',
    'linear-gradient(rgba(26,65,55,0.06) 1px, transparent 1px),'
)
$content = $content.Replace(
    'linear-gradient(90deg, rgba(158,192,8,0.04) 1px, transparent 1px);',
    'linear-gradient(90deg, rgba(26,65,55,0.06) 1px, transparent 1px);'
)

# 5. Hero h1 color: white -> dark
$content = $content.Replace(
    'color: #ffffff;' + "`r`n`t`t`tmargin-bottom: 24px;",
    'color: #0d2e26;' + "`r`n`t`t`tmargin-bottom: 24px;"
)
$content = $content.Replace(
    'color: #ffffff;' + "`n`t`t`tmargin-bottom: 24px;",
    'color: #0d2e26;' + "`n`t`t`tmargin-bottom: 24px;"
)

# 6. Lead text color: light opacity white -> dark for light bg
$content = $content.Replace(
    'color: rgba(255,255,255,0.65);' + "`r`n`t`t`tmax-width: 520px;",
    'color: rgba(13,46,38,0.7);' + "`r`n`t`t`tmax-width: 520px;"
)
$content = $content.Replace(
    'color: rgba(255,255,255,0.65);' + "`n`t`t`tmax-width: 520px;",
    'color: rgba(13,46,38,0.7);' + "`n`t`t`tmax-width: 520px;"
)

# 7. Stat bar background: dark glass -> light glass
$content = $content.Replace(
    'background: rgba(255,255,255,0.08);' + "`r`n`t`t`tborder-radius: 16px;",
    'background: rgba(13,46,38,0.07);' + "`r`n`t`t`tborder-radius: 16px;"
)
$content = $content.Replace(
    'background: rgba(255,255,255,0.08);' + "`n`t`t`tborder-radius: 16px;",
    'background: rgba(13,46,38,0.07);' + "`n`t`t`tborder-radius: 16px;"
)
$content = $content.Replace(
    "border: 1px solid rgba(255,255,255,0.06);`r`n`t`t}`r`n`t`t.vjs-hero-stat {",
    "border: 1px solid rgba(13,46,38,0.12);`r`n`t`t}`r`n`t`t.vjs-hero-stat {"
)

# 8. Stat cell bg: dark -> light
$content = $content.Replace(
    'background: rgba(8,32,27,0.6);' + "`r`n`t`t`tbackdrop-filter: blur(12px);",
    'background: rgba(255,255,255,0.7);' + "`r`n`t`t`tbackdrop-filter: blur(12px);"
)
$content = $content.Replace(
    'background: rgba(8,32,27,0.6);' + "`n`t`t`tbackdrop-filter: blur(12px);",
    'background: rgba(255,255,255,0.7);' + "`n`t`t`tbackdrop-filter: blur(12px);"
)

# 9. Stat num color: lime -> brand green (dark)
$content = $content.Replace(
    '.vjs-hero-stat .num {' + "`r`n`t`t`tfont-size: 1.9rem;",
    '.vjs-hero-stat .num {' + "`r`n`t`t`tfont-size: 1.9rem;"
)
# Change stat num color specifically
$content = $content.Replace(
    'color: #c8f542;' + "`r`n`t`t`tline-height: 1;",
    'color: #2d7a3a;' + "`r`n`t`t`tline-height: 1;"
)
$content = $content.Replace(
    'color: #c8f542;' + "`n`t`t`tline-height: 1;",
    'color: #2d7a3a;' + "`n`t`t`tline-height: 1;"
)

# 10. Stat label color: dim white -> dark
$content = $content.Replace(
    'color: rgba(255,255,255,0.5);' + "`r`n`t`t}",
    'color: rgba(13,46,38,0.6);' + "`r`n`t`t}"
)
$content = $content.Replace(
    'color: rgba(255,255,255,0.5);' + "`n`t`t}",
    'color: rgba(13,46,38,0.6);' + "`n`t`t}"
)

# 11. Pillar cards: dark glass -> light glass
$content = $content.Replace(
    'background: rgba(255,255,255,0.04);' + "`r`n`t`t`tborder: 1px solid rgba(255,255,255,0.07);",
    'background: rgba(255,255,255,0.85);' + "`r`n`t`t`tborder: 1px solid rgba(13,46,38,0.1);"
)
$content = $content.Replace(
    'background: rgba(255,255,255,0.04);' + "`n`t`t`tborder: 1px solid rgba(255,255,255,0.07);",
    'background: rgba(255,255,255,0.85);' + "`n`t`t`tborder: 1px solid rgba(13,46,38,0.1);"
)

# 12. Featured card bg
$content = $content.Replace(
    'background: linear-gradient(135deg, rgba(158,192,8,0.12) 0%, rgba(8,32,27,0.8) 100%);' + "`r`n`t`t`tborder-color: rgba(158,192,8,0.2);",
    'background: linear-gradient(135deg, rgba(158,192,8,0.18) 0%, rgba(13,46,38,0.08) 100%);' + "`r`n`t`t`tborder-color: rgba(158,192,8,0.35);"
)
$content = $content.Replace(
    'background: linear-gradient(135deg, rgba(158,192,8,0.12) 0%, rgba(8,32,27,0.8) 100%);' + "`n`t`t`tborder-color: rgba(158,192,8,0.2);",
    'background: linear-gradient(135deg, rgba(158,192,8,0.18) 0%, rgba(13,46,38,0.08) 100%);' + "`n`t`t`tborder-color: rgba(158,192,8,0.35);"
)

# 13. Pillar card text: white -> dark
$content = $content.Replace(
    '.vjs-pillar-card h4 { font-size: 15px; font-weight: 700; color: #fff; margin-bottom: 8px; }',
    '.vjs-pillar-card h4 { font-size: 15px; font-weight: 700; color: #0d2e26; margin-bottom: 8px; }'
)
$content = $content.Replace(
    '.vjs-pillar-card p { font-size: 13px; color: rgba(255,255,255,0.55); line-height: 1.65; margin: 0; }',
    '.vjs-pillar-card p { font-size: 13px; color: rgba(13,46,38,0.65); line-height: 1.65; margin: 0; }'
)
$content = $content.Replace(
    '.vjs-pillar-card.featured h4 { font-size: 17px; color: #c8f542; }',
    '.vjs-pillar-card.featured h4 { font-size: 17px; color: #1a5c2a; }'
)
$content = $content.Replace(
    '.vjs-pillar-card.featured p { color: rgba(255,255,255,0.65); font-size: 13.5px; }',
    '.vjs-pillar-card.featured p { color: rgba(13,46,38,0.7); font-size: 13.5px; }'
)

# 14. Founding year watermark color
$content = $content.Replace(
    'color: rgba(158,192,8,0.06);',
    'color: rgba(26,65,55,0.07);'
)

# 15. Orb colors for light bg
$content = $content.Replace(
    'background: radial-gradient(circle, rgba(158,192,8,0.12) 0%, transparent 70%);' + "`r`n`t`t`tanimation-delay: 0s;",
    'background: radial-gradient(circle, rgba(158,192,8,0.2) 0%, transparent 70%);' + "`r`n`t`t`tanimation-delay: 0s;"
)
$content = $content.Replace(
    'background: radial-gradient(circle, rgba(158,192,8,0.12) 0%, transparent 70%);' + "`n`t`t`tanimation-delay: 0s;",
    'background: radial-gradient(circle, rgba(158,192,8,0.2) 0%, transparent 70%);' + "`n`t`t`tanimation-delay: 0s;"
)
$content = $content.Replace(
    'background: radial-gradient(circle, rgba(26,65,55,0.4) 0%, transparent 70%);',
    'background: radial-gradient(circle, rgba(158,192,8,0.15) 0%, transparent 70%);'
)

# 16. Breadcrumb colors on light bg
$content = $content.Replace(
    'color: rgba(255,255,255,0.5);' + "`r`n`t`t`ttext-decoration: none;",
    'color: rgba(13,46,38,0.55);' + "`r`n`t`t`ttext-decoration: none;"
)
$content = $content.Replace(
    'color: rgba(255,255,255,0.5);' + "`n`t`t`ttext-decoration: none;",
    'color: rgba(13,46,38,0.55);' + "`n`t`t`ttext-decoration: none;"
)

# 17. hero stat hover: slightly green
$content = $content.Replace(
    '.vjs-hero-stat:hover { background: rgba(158,192,8,0.08); }',
    '.vjs-hero-stat:hover { background: rgba(158,192,8,0.15); }'
)

[System.IO.File]::WriteAllText($file, $content)
Write-Host "ALL LIGHT THEME CHANGES APPLIED OK"
