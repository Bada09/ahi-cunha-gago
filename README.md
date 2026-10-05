# LAVAí & AHI — Cunha Gago

Dashboard de vendas da unidade **40# AHI - Cunha Gago**, publicado no GitHub Pages.

- `index.html` — tela de login + dashboard.
- `dados.js` — vendas desde 03/06/2026, **criptografadas** (AES-256-GCM, chave derivada da senha com PBKDF2).
  Sem a senha o arquivo é ilegível. Ele é gerado e publicado automaticamente pelo robô local
  (`robo_cunha_gago.py`, que fica fora deste repositório), quando entra venda nova e de hora em hora.
