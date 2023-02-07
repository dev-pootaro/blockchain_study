# blockchain_study

## ブロックチェーンサーバ起動  

---

port 5000
port 5001
port 5002

dockerコンテナ内で下記コマンドを実行  

```shell
python blocakchain_server.py
python blocakchain_server.py -p 5001
python blocakchain_server.py -p 5002
```

## ウォレットサーバ起動

---

port 8080
port 8081
port 8082

dockerコンテナ内で下記コマンドを実行  

```shell
python wallet_server.py
python wallet_server.py -p 8081
python wallet_server.py -p 8082
```

## ウォレットアプリ

---

1  
ブラウザで下記にアクセス  
[http://localhost:8080](http://localhost:8080)  
[http://localhost:8081](http://localhost:8081)  

2  
送信したい相手のblockchain addressを「Address:」に入力し、  
「Amount:」に数値を入力

3  
「Send」を押下し、confirmも「OK」を押下  

4  
下記urlでトランザクションを確認できる  
[http://localhost:5000/transactions](http://localhost:5000/transactions)  
[http://localhost:5001/transactions](http://localhost:5001/transactions)  

マイニング  
下記urlを叩くとトランザクションが削除され、送金が実行完了する  
[http://localhost:5000/mine](http://localhost:5000/transactions/mine)  

下記urlでチェインを確認できる
[http://localhost:5000/chain](http://localhost:5000/transactions/chain)  
[http://localhost:5001/chain](http://localhost:5001/transactions/chain)  
