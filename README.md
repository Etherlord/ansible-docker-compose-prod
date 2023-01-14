## Подготовка сервера с помощью ansible

Данный раздел актуален только для инициализации сервера, работающего на базе последнего стабильного выпуска Debian

1. Создайте файл `hosts.yaml` по примеру из `hosts.yaml.dist` 
2. Скопируйте ваш ssh ключ на сервер, чтобы входить под пользователем root по ключу
3. Запустите команду 
    ```shell script
    make prod
    ```
4. **Опционально**
   1. Установите для ansible коллекцию `community.general` с помощью команды `ansible-galaxy collection install community.general`
   2. Создайте в папке `roles/gitlab-runner/vars` файл `vars.yaml` по примеру из `vars.yaml.dist`
   3. Для установки и регистрации gitlab-runner запустите команду
      ```shell script
      make gitlab-runner
      ```
5. После завершения работы не забудьте запретить входить под пользователем root по ssh
