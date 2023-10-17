## Подготовка сервера с помощью ansible

Данный раздел актуален только для инициализации сервера, работающего на базе последнего стабильного выпуска Debian

1. Создайте файл `hosts.yaml` по примеру из `hosts.yaml.dist`
2. Установите для ansible коллекцию `community.general` с помощью команды `ansible-galaxy collection install community.general`
3. Запустите команду
    ```shell script
    make prod
    ```
4. **Опционально**
   * Для установки prometheus node exporter запустите команду
     ```shell script
     make node-exporter
     ```

5. После завершения работы в `hosts.yaml`:
   * Поменяйте пользователя на того, что указали в переменной `username`
   * Порт ssh на тот, что указали в переменной `ssh_port`
   * Добавьте строчку `ansible_become: yes` после `ansible_user`

6. Для обновления ПО на сервере запустите:
     ```shell script
     make software-upgrade
     ```
