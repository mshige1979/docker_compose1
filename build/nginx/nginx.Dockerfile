# ベースイメージ
FROM nginx

# ポート開放
EXPOSE 80 433

# 起動
CMD nginx -g "daemon off;"
