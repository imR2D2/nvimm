![image](https://user-images.githubusercontent.com/102141714/236871303-3d026987-dacc-4374-b085-e88ec1895ef6.png)


#PASOS PARA INSTALAR NEOVIM

- TEMA
--SUBTEMA
) COMANDO


- Instalar git
https://git-scm.com/downloads

- Instalar NodeJS (Nativo o con NVM)
https://nodejs.org/es/download/
)scope install nvm
)nvm install nodeversion

- Instalar Windows Terminal

- Instalar gestor de paquetes Chocolatey
https://chocolatey.org/install
-- Ejecutas una terminal en modo administrador y colocas el comando de Chocolatey
)choco install neovim

- Instalar gestor de Plugins "Vim-Plug"
https://github.com/junegunn/vim-plug
-- Seleccionas el comando y el sistema operativo que utilizas
-- Ejecutas como administrador la terminal y colocas el comando seleccionado

- Archivo de vim-plug
-- Entras a tu explorador de archivos y en la pestaña "Vistas" habilitas "Seccion de archivo e items ocultos"
-- Entras a la carpeta c:\users\tuusuario\appdata\local\nvim
-- Creamos una carpeta nueva con el nombre "nvim"
-- Creamos una carpeta llamada "plugged"
-- Creamos un archivo "init.vim"

- Si ya tienes una configuracion lo que debes de hacer es descargar los plugins
-- Te redireccionas hasta la carpeta c:\users\tuusuario\appdata\local\nvim
-- Una vez colocado en la carpeta colocas el siguiente comando para abrir vim y el nombre del archivo de configuracion
)nvim .\init.vim
-- Una vez dentro colocas dos puntos y el siguiente comando
) :PlugInstall
-- Sales de nvim, abres de nuevo y estara la configuracion


////////////////////////////////////
- Actualizar nvim 
) choco upgrade neovim
