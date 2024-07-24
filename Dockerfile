# FROM node:lts
FROM node:lts-slim

WORKDIR /app

RUN npm install -g pnpm

# 複製所有其他檔案
COPY . /app

# 安裝依賴
RUN pnpm install

# 執行其他必要的命令，如生成和構建
RUN pnpm generate
RUN pnpm build

CMD ["pnpm", "start"]


