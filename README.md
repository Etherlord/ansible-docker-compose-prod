## Подготовка сервера с помощью ansible

Данный раздел актуален только для инициализации сервера, работающего на базе последнего стабильного выпуска Debian

1. Создайте файл `hosts.yaml` по примеру из `hosts.yaml.dist`
2. Установите для ansible коллекцию `community.general` с помощью команды `ansible-galaxy collection install community.general`
3. Запустите команду 
    ```shell script
    make prod
    ```
4. **Опционально**
   * Создайте в папке `roles/gitlab-runner/vars` файл `vars.yaml` по примеру из `vars.yaml.dist`
   * Для установки и регистрации gitlab-runner запустите команду
      ```shell script
      make gitlab-runner
      ```

5. **Опционально**  
   * Для установки prometheus node exporter запустите команду
     ```shell script
     make node-exporter
     ```

6. После завершения работы в `hosts.yaml`:
   * Поменяйте пользователя на того, что указали в переменной `username`
   * Порт ssh на тот, что указали в переменной `ssh_port`
   * Добавьте строчку `ansible_become: yes` после `ansible_user`
