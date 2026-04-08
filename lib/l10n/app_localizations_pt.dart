// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get appTitle => 'CasaOS / ZimaOS';

  @override
  String get appTitleClient => 'Cliente CasaOS / ZimaOS';

  @override
  String get settings => 'Definições';

  @override
  String get about => 'Acerca';

  @override
  String get appearance => 'Aspeto';

  @override
  String get openSource => 'Código aberto';

  @override
  String get tapToOpen => 'Toque para abrir no navegador';

  @override
  String get themeMode => 'Tema';

  @override
  String get followSystem => 'Seguir o sistema';

  @override
  String get lightMode => 'Claro';

  @override
  String get darkMode => 'Escuro';

  @override
  String get themeColor => 'Cor do tema';

  @override
  String get themeColorDescription =>
      'Escolha uma cor de tema; aplica-se aos modos claro e escuro.';

  @override
  String get language => 'Idioma';

  @override
  String get languageFollowSystem => 'Seguir o sistema';

  @override
  String get files => 'Ficheiros';

  @override
  String get serverConfig => 'Servidor';

  @override
  String get refresh => 'Atualizar';

  @override
  String get user => 'Utilizador';

  @override
  String get login => 'Iniciar sessão';

  @override
  String get home => 'Início';

  @override
  String get welcome => 'Bem-vindo';

  @override
  String get logout => 'Terminar sessão';

  @override
  String get systemStatus => 'Estado do sistema';

  @override
  String get error => 'Erro';

  @override
  String get apps => 'Aplicações';

  @override
  String appCount(Object count) {
    return '$count no total';
  }

  @override
  String get noApps => 'Nenhuma aplicação';

  @override
  String get cancel => 'Cancelar';

  @override
  String get ok => 'OK';

  @override
  String get retry => 'Tentar novamente';

  @override
  String get back => 'Voltar';

  @override
  String get delete => 'Eliminar';

  @override
  String get cannotGetAppAddress =>
      'Não foi possível obter o endereço da aplicação';

  @override
  String cannotOpen(Object url) {
    return 'Não foi possível abrir: $url';
  }

  @override
  String openFailed(Object e) {
    return 'Falha ao abrir: $e';
  }

  @override
  String get appTypeNotSupported =>
      'Este tipo de aplicação não suporta esta operação';

  @override
  String get starting => 'A iniciar';

  @override
  String get restarting => 'A reiniciar';

  @override
  String get restart => 'Reiniciar';

  @override
  String get closed => 'Fechado';

  @override
  String operationFailed(Object e) {
    return 'Operação falhou: $e';
  }

  @override
  String tipsTitle(Object name) {
    return '$name - Dicas';
  }

  @override
  String get noDescription => 'Sem descrição. Vá às definições para alterar.';

  @override
  String get checkUpdateNotSupported =>
      'Esta aplicação não suporta verificação de atualizações';

  @override
  String updateFailed(Object e) {
    return 'Atualização falhou: $e';
  }

  @override
  String get confirmUninstall => 'Confirmar desinstalação';

  @override
  String uninstallConfirmMessage(Object name) {
    return 'Tem a certeza de que pretende desinstalar \"$name\"? Os dados não poderão ser recuperados.';
  }

  @override
  String get uninstall => 'Desinstalar';

  @override
  String get cannotUninstall => 'Não é possível desinstalar';

  @override
  String get uninstalled => 'Desinstalado';

  @override
  String uninstallFailed(Object e) {
    return 'Falha na desinstalação: $e';
  }

  @override
  String get cannotRestart => 'Não é possível reiniciar';

  @override
  String get cannotClose => 'Não é possível fechar';

  @override
  String get running => 'Em execução';

  @override
  String get open => 'Abrir';

  @override
  String get launchAndOpen => 'Iniciar e abrir';

  @override
  String get tips => 'Dicas';

  @override
  String get checkAndUpdate => 'Verificar e atualizar';

  @override
  String get close => 'Fechar';

  @override
  String get configureServerFirst => 'Configure e ative um servidor primeiro';

  @override
  String get loginFailed => 'Falha no início de sessão';

  @override
  String get configureServer => 'Configurar servidor';

  @override
  String get username => 'Nome de utilizador';

  @override
  String get password => 'Palavra-passe';

  @override
  String get usernameRequired => 'Introduza o nome de utilizador';

  @override
  String get passwordRequired => 'Introduza a palavra-passe';

  @override
  String get passwordMinLength =>
      'A palavra-passe deve ter pelo menos 5 caracteres';

  @override
  String get rememberCredentials => 'Memorizar credenciais';

  @override
  String get newFolder => 'Nova pasta';

  @override
  String get newFile => 'Novo ficheiro';

  @override
  String get folderName => 'Nome da pasta';

  @override
  String get fileName => 'Nome do ficheiro';

  @override
  String get create => 'Criar';

  @override
  String get folderCreated => 'Pasta criada com sucesso';

  @override
  String get fileCreated => 'Ficheiro criado com sucesso';

  @override
  String createFailed(Object e) {
    return 'Falha ao criar: $e';
  }

  @override
  String get rename => 'Mudar o nome';

  @override
  String get renameFolder => 'Mudar o nome da pasta';

  @override
  String get renameFile => 'Mudar o nome do ficheiro';

  @override
  String get newName => 'Novo nome';

  @override
  String get renameSuccess => 'Nome alterado com sucesso';

  @override
  String renameFailed(Object e) {
    return 'Falha ao mudar o nome: $e';
  }

  @override
  String get deleteFolder => 'Eliminar pasta';

  @override
  String get deleteFile => 'Eliminar ficheiro';

  @override
  String deleteConfirm(Object name) {
    return 'Eliminar \"$name\"? Esta ação não pode ser anulada.';
  }

  @override
  String get deleteSuccess => 'Eliminado com sucesso';

  @override
  String deleteFailed(Object e) {
    return 'Falha ao eliminar: $e';
  }

  @override
  String get parentDirectory => 'Pasta superior';

  @override
  String get listView => 'Lista';

  @override
  String get gridView => 'Grelha';

  @override
  String get folderEmpty => 'Pasta vazia';

  @override
  String openFile(Object name) {
    return 'Abrir ficheiro: $name';
  }

  @override
  String get folder => 'Pasta';

  @override
  String get file => 'Ficheiro';

  @override
  String get download => 'Transferir';

  @override
  String get downloadNotImplemented => 'Transferência não implementada';

  @override
  String get downloadSuccess => 'Transferência concluída';

  @override
  String get downloadCancelled => 'Transferência cancelada';

  @override
  String get downloadPreparing => 'A preparar transferência...';

  @override
  String get downloadAndPlay => 'Transferir e reproduzir';

  @override
  String get downloadingForPlayback => 'A transferir para reprodução...';

  @override
  String get fullscreen => 'Ecrã inteiro';

  @override
  String get installSuccess => 'Instalado com sucesso';

  @override
  String installSuccessWithApp(Object title) {
    return '$title instalado com sucesso';
  }

  @override
  String installFailed(Object e) {
    return 'Falha na instalação: $e';
  }

  @override
  String getAppConfigFailed(Object e) {
    return 'Falha ao obter configuração da aplicação: $e';
  }

  @override
  String customInstall(Object title) {
    return 'Instalação personalizada: $title';
  }

  @override
  String get editComposeHint => 'Edite o docker-compose e toque em instalar';

  @override
  String get install => 'Instalar';

  @override
  String get appStore => 'Loja de aplicações';

  @override
  String get searchApps => 'Procurar aplicações';

  @override
  String get category => 'Categoria';

  @override
  String get allCategories => 'Todas as categorias';

  @override
  String get noAppsFound => 'Nenhuma aplicação encontrada';

  @override
  String get installed => 'Instalado';

  @override
  String get custom => 'Personalizado';

  @override
  String get appDetail => 'Detalhes da aplicação';

  @override
  String get appNotFound => 'Aplicação não encontrada';

  @override
  String versionLabel(Object version) {
    return 'Versão: $version';
  }

  @override
  String get description => 'Descrição';

  @override
  String get status => 'Estado';

  @override
  String get notRunning => 'Parado';

  @override
  String get installStartNotImplemented =>
      'Instalar/iniciar não implementado (requer /v2/app_management/compose)';

  @override
  String get uninstallNotImplemented =>
      'Desinstalar não implementado (requer /v2/app_management/compose)';

  @override
  String get installStart => 'Instalar / Iniciar';

  @override
  String get legacyApps => 'Aplicações antigas (a reconstruir)';

  @override
  String get version => 'Versão';

  @override
  String get cpuUsage => 'Utilização da CPU';

  @override
  String cores(Object count) {
    return 'Núcleos: $count';
  }

  @override
  String get memory => 'Memória (RAM)';

  @override
  String memoryUsage(Object percent) {
    return '$percent% em utilização';
  }

  @override
  String usedOfTotal(Object used, Object total) {
    return 'Utilizado $used / Total $total';
  }

  @override
  String get storage => 'Armazenamento';

  @override
  String totalLabel(Object storage) {
    return 'Total $storage';
  }

  @override
  String usedLabel(Object used, Object percent) {
    return 'Utilizado $used · $percent%';
  }

  @override
  String get disk => 'Disco';

  @override
  String get networkStatus => 'Rede';

  @override
  String get addServer => 'Adicionar servidor';

  @override
  String get editServer => 'Editar servidor';

  @override
  String get nasType => 'Tipo de NAS';

  @override
  String get nasTypeCasaOS => 'CasaOS';

  @override
  String get nasTypeZimaOS => 'ZimaOS';

  @override
  String get serverName => 'Nome do servidor';

  @override
  String get serverNameRequired => 'Introduza o nome do servidor';

  @override
  String get hostAddress => 'Endereço do anfitrião';

  @override
  String get hostAddressHint => '192.168.1.100 ou casaos.local';

  @override
  String get hostAddressRequired => 'Introduza o endereço do anfitrião';

  @override
  String get port => 'Porta';

  @override
  String get portRequired => 'Introduza a porta';

  @override
  String get portInvalid => 'Porta inválida (1-65535)';

  @override
  String get useHttps => 'Utilizar HTTPS';

  @override
  String get save => 'Guardar';

  @override
  String get noServerConfigured => 'Nenhum servidor configurado';

  @override
  String get activate => 'Ativar';

  @override
  String get edit => 'Editar';

  @override
  String get confirmDelete => 'Confirmar eliminação';

  @override
  String confirmDeleteServer(Object name) {
    return 'Eliminar o servidor \"$name\"?';
  }

  @override
  String get welcomeToCasaOS => 'Bem-vindo ao CasaOS / ZimaOS';

  @override
  String get createAccountHint => 'Vamos criar primeiro a sua conta inicial.';

  @override
  String get createAccount => 'Criar conta';

  @override
  String get start => 'Começar →';

  @override
  String get confirmPassword => 'Confirmar palavra-passe';

  @override
  String get confirmPasswordRequired => 'Introduza novamente a palavra-passe';

  @override
  String get passwordMismatch => 'As palavras-passe não coincidem';

  @override
  String get allDone => 'Tudo pronto!';

  @override
  String get accountCreatedHint =>
      'Conta criada. Entre na área de trabalho do CasaOS / ZimaOS.';

  @override
  String get enterDesktop => 'Entrar na área de trabalho';

  @override
  String get cannotGetInitKey =>
      'Não foi possível obter a chave de init. Verifique o servidor.';

  @override
  String initFailed(Object e) {
    return 'Falha na inicialização: $e';
  }

  @override
  String get openAppWith => 'Abrir aplicação com';

  @override
  String get builtinBrowser => 'Navegador integrado';

  @override
  String get systemBrowser => 'Navegador do sistema';

  @override
  String get openInSystemBrowser => 'Abrir no navegador do sistema';

  @override
  String get loading => 'A carregar...';
}

/// The translations for Portuguese, as used in Brazil (`pt_BR`).
class AppLocalizationsPtBr extends AppLocalizationsPt {
  AppLocalizationsPtBr() : super('pt_BR');

  @override
  String get appTitle => 'CasaOS / ZimaOS';

  @override
  String get appTitleClient => 'Cliente CasaOS / ZimaOS';

  @override
  String get settings => 'Configurações';

  @override
  String get about => 'Sobre';

  @override
  String get appearance => 'Aparência';

  @override
  String get openSource => 'Código aberto';

  @override
  String get tapToOpen => 'Toque para abrir no navegador';

  @override
  String get themeMode => 'Tema';

  @override
  String get followSystem => 'Seguir o sistema';

  @override
  String get lightMode => 'Claro';

  @override
  String get darkMode => 'Escuro';

  @override
  String get themeColor => 'Cor do tema';

  @override
  String get themeColorDescription =>
      'Escolha uma cor de tema; vale para os modos claro e escuro.';

  @override
  String get language => 'Idioma';

  @override
  String get languageFollowSystem => 'Seguir o sistema';

  @override
  String get files => 'Arquivos';

  @override
  String get serverConfig => 'Servidor';

  @override
  String get refresh => 'Atualizar';

  @override
  String get user => 'Usuário';

  @override
  String get login => 'Entrar';

  @override
  String get home => 'Início';

  @override
  String get welcome => 'Bem-vindo';

  @override
  String get logout => 'Sair';

  @override
  String get systemStatus => 'Estado do sistema';

  @override
  String get error => 'Erro';

  @override
  String get apps => 'Aplicativos';

  @override
  String appCount(Object count) {
    return '$count no total';
  }

  @override
  String get noApps => 'Nenhum aplicativo';

  @override
  String get cancel => 'Cancelar';

  @override
  String get ok => 'OK';

  @override
  String get retry => 'Tentar de novo';

  @override
  String get back => 'Voltar';

  @override
  String get delete => 'Excluir';

  @override
  String get cannotGetAppAddress => 'Não foi possível obter o endereço do app';

  @override
  String cannotOpen(Object url) {
    return 'Não foi possível abrir: $url';
  }

  @override
  String openFailed(Object e) {
    return 'Falha ao abrir: $e';
  }

  @override
  String get appTypeNotSupported =>
      'Este tipo de app não suporta esta operação';

  @override
  String get starting => 'Iniciando';

  @override
  String get restarting => 'Reiniciando';

  @override
  String get restart => 'Reiniciar';

  @override
  String get closed => 'Encerrado';

  @override
  String operationFailed(Object e) {
    return 'Operação falhou: $e';
  }

  @override
  String tipsTitle(Object name) {
    return '$name - Dicas';
  }

  @override
  String get noDescription =>
      'Sem descrição. Vá às configurações para alterar.';

  @override
  String get checkUpdateNotSupported =>
      'Este app não suporta verificação de atualizações';

  @override
  String updateFailed(Object e) {
    return 'Atualização falhou: $e';
  }

  @override
  String get confirmUninstall => 'Confirmar desinstalação';

  @override
  String uninstallConfirmMessage(Object name) {
    return 'Deseja realmente desinstalar \"$name\"? Os dados não poderão ser recuperados.';
  }

  @override
  String get uninstall => 'Desinstalar';

  @override
  String get cannotUninstall => 'Não é possível desinstalar';

  @override
  String get uninstalled => 'Desinstalado';

  @override
  String uninstallFailed(Object e) {
    return 'Falha na desinstalação: $e';
  }

  @override
  String get cannotRestart => 'Não é possível reiniciar';

  @override
  String get cannotClose => 'Não é possível fechar';

  @override
  String get running => 'Em execução';

  @override
  String get open => 'Abrir';

  @override
  String get launchAndOpen => 'Iniciar e abrir';

  @override
  String get tips => 'Dicas';

  @override
  String get checkAndUpdate => 'Verificar e atualizar';

  @override
  String get close => 'Fechar';

  @override
  String get configureServerFirst => 'Configure e ative um servidor primeiro';

  @override
  String get loginFailed => 'Falha no login';

  @override
  String get configureServer => 'Configurar servidor';

  @override
  String get username => 'Nome de usuário';

  @override
  String get password => 'Senha';

  @override
  String get usernameRequired => 'Digite o nome de usuário';

  @override
  String get passwordRequired => 'Digite a senha';

  @override
  String get passwordMinLength => 'A senha deve ter pelo menos 5 caracteres';

  @override
  String get rememberCredentials => 'Lembrar credenciais';

  @override
  String get newFolder => 'Nova pasta';

  @override
  String get newFile => 'Novo arquivo';

  @override
  String get folderName => 'Nome da pasta';

  @override
  String get fileName => 'Nome do arquivo';

  @override
  String get create => 'Criar';

  @override
  String get folderCreated => 'Pasta criada com sucesso';

  @override
  String get fileCreated => 'Arquivo criado com sucesso';

  @override
  String createFailed(Object e) {
    return 'Falha ao criar: $e';
  }

  @override
  String get rename => 'Renomear';

  @override
  String get renameFolder => 'Renomear pasta';

  @override
  String get renameFile => 'Renomear arquivo';

  @override
  String get newName => 'Novo nome';

  @override
  String get renameSuccess => 'Renomeado com sucesso';

  @override
  String renameFailed(Object e) {
    return 'Falha ao renomear: $e';
  }

  @override
  String get deleteFolder => 'Excluir pasta';

  @override
  String get deleteFile => 'Excluir arquivo';

  @override
  String deleteConfirm(Object name) {
    return 'Excluir \"$name\"? Esta ação não pode ser desfeita.';
  }

  @override
  String get deleteSuccess => 'Excluído com sucesso';

  @override
  String deleteFailed(Object e) {
    return 'Falha ao excluir: $e';
  }

  @override
  String get parentDirectory => 'Pasta superior';

  @override
  String get listView => 'Lista';

  @override
  String get gridView => 'Grade';

  @override
  String get folderEmpty => 'Pasta vazia';

  @override
  String openFile(Object name) {
    return 'Abrir arquivo: $name';
  }

  @override
  String get folder => 'Pasta';

  @override
  String get file => 'Arquivo';

  @override
  String get download => 'Baixar';

  @override
  String get downloadNotImplemented => 'Download não implementado';

  @override
  String get downloadSuccess => 'Download concluído';

  @override
  String get downloadCancelled => 'Download cancelado';

  @override
  String get downloadPreparing => 'Preparando download...';

  @override
  String get downloadAndPlay => 'Baixar e reproduzir';

  @override
  String get downloadingForPlayback => 'Baixando para reprodução...';

  @override
  String get fullscreen => 'Tela cheia';

  @override
  String get installSuccess => 'Instalado com sucesso';

  @override
  String installSuccessWithApp(Object title) {
    return '$title instalado com sucesso';
  }

  @override
  String installFailed(Object e) {
    return 'Falha na instalação: $e';
  }

  @override
  String getAppConfigFailed(Object e) {
    return 'Falha ao obter configuração do app: $e';
  }

  @override
  String customInstall(Object title) {
    return 'Instalação personalizada: $title';
  }

  @override
  String get editComposeHint => 'Edite o docker-compose e toque em instalar';

  @override
  String get install => 'Instalar';

  @override
  String get appStore => 'Loja de apps';

  @override
  String get searchApps => 'Buscar apps';

  @override
  String get category => 'Categoria';

  @override
  String get allCategories => 'Todas as categorias';

  @override
  String get noAppsFound => 'Nenhum app encontrado';

  @override
  String get installed => 'Instalado';

  @override
  String get custom => 'Personalizado';

  @override
  String get appDetail => 'Detalhes do app';

  @override
  String get appNotFound => 'App não encontrado';

  @override
  String versionLabel(Object version) {
    return 'Versão: $version';
  }

  @override
  String get description => 'Descrição';

  @override
  String get status => 'Estado';

  @override
  String get notRunning => 'Parado';

  @override
  String get installStartNotImplemented =>
      'Instalar/iniciar não implementado (requer /v2/app_management/compose)';

  @override
  String get uninstallNotImplemented =>
      'Desinstalar não implementado (requer /v2/app_management/compose)';

  @override
  String get installStart => 'Instalar / Iniciar';

  @override
  String get legacyApps => 'Apps legados (a reconstruir)';

  @override
  String get version => 'Versão';

  @override
  String get cpuUsage => 'Uso da CPU';

  @override
  String cores(Object count) {
    return 'Núcleos: $count';
  }

  @override
  String get memory => 'Memória (RAM)';

  @override
  String memoryUsage(Object percent) {
    return '$percent% em uso';
  }

  @override
  String usedOfTotal(Object used, Object total) {
    return 'Usado $used / Total $total';
  }

  @override
  String get storage => 'Armazenamento';

  @override
  String totalLabel(Object storage) {
    return 'Total $storage';
  }

  @override
  String usedLabel(Object used, Object percent) {
    return 'Usado $used · $percent%';
  }

  @override
  String get disk => 'Disco';

  @override
  String get networkStatus => 'Rede';

  @override
  String get addServer => 'Adicionar servidor';

  @override
  String get editServer => 'Editar servidor';

  @override
  String get nasType => 'Tipo de NAS';

  @override
  String get nasTypeCasaOS => 'CasaOS';

  @override
  String get nasTypeZimaOS => 'ZimaOS';

  @override
  String get serverName => 'Nome do servidor';

  @override
  String get serverNameRequired => 'Digite o nome do servidor';

  @override
  String get hostAddress => 'Endereço do host';

  @override
  String get hostAddressHint => '192.168.1.100 ou casaos.local';

  @override
  String get hostAddressRequired => 'Digite o endereço do host';

  @override
  String get port => 'Porta';

  @override
  String get portRequired => 'Digite a porta';

  @override
  String get portInvalid => 'Porta inválida (1-65535)';

  @override
  String get useHttps => 'Usar HTTPS';

  @override
  String get save => 'Salvar';

  @override
  String get noServerConfigured => 'Nenhum servidor configurado';

  @override
  String get activate => 'Ativar';

  @override
  String get edit => 'Editar';

  @override
  String get confirmDelete => 'Confirmar exclusão';

  @override
  String confirmDeleteServer(Object name) {
    return 'Excluir o servidor \"$name\"?';
  }

  @override
  String get welcomeToCasaOS => 'Bem-vindo ao CasaOS / ZimaOS';

  @override
  String get createAccountHint => 'Vamos criar sua conta inicial.';

  @override
  String get createAccount => 'Criar conta';

  @override
  String get start => 'Começar →';

  @override
  String get confirmPassword => 'Confirmar senha';

  @override
  String get confirmPasswordRequired => 'Digite a senha novamente';

  @override
  String get passwordMismatch => 'As senhas não coincidem';

  @override
  String get allDone => 'Tudo pronto!';

  @override
  String get accountCreatedHint =>
      'Conta criada. Entre na área de trabalho do CasaOS / ZimaOS.';

  @override
  String get enterDesktop => 'Entrar na área de trabalho';

  @override
  String get cannotGetInitKey =>
      'Não foi possível obter a chave de init. Verifique o servidor.';

  @override
  String initFailed(Object e) {
    return 'Falha na inicialização: $e';
  }

  @override
  String get openAppWith => 'Abrir app com';

  @override
  String get builtinBrowser => 'Navegador interno';

  @override
  String get systemBrowser => 'Navegador do sistema';

  @override
  String get openInSystemBrowser => 'Abrir no navegador do sistema';

  @override
  String get loading => 'Carregando...';
}
