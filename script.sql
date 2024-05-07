Table Aplicativo_Movel {
  id_do_usuario int [pk, increment]
  nome_do_usuario varchar(255)
  endereco varchar(255)
  historico_de_solicitacoes varchar(255)
  id_pontos_acumulados varchar(100) [pk, increment]
}

Table Caminhao_de_Coleta {
  id_do_caminhao int [pk, increment]
  localizacao varchar(255)
  rota varchar(255)
  capacidade int
}

Table Centro_de_Processamento {
  id_do_centro int [pk, increment]
  localizacao varchar(255)
  capacidade_de_processamento int
  tipos_de_residuos_processados text
}

Table Programa_de_Iniciativa {
  id_do_programa int [pk, increment]
  nome_do_programa varchar(255)
  regras_de_participacao varchar(255)
  id_recompensas text [pk, increment]
}

Table Sentral_de_id {
  id_conteiner int [pk,ref: >Aplicativo_Movel.id_do_usuario]
  id_caminhao int [pk, ref: > Caminhao_de_Coleta.id_do_caminhao]
  id_centro int [pk, ref: > Centro_de_Processamento.id_do_centro]
}

Table Sobre_o_Programa{
  id_programan int [pk, ref: > Programa_de_Iniciativa.id_do_programa]
  id_recompenssa int [pk, ref: > Programa_de_Iniciativa.id_recompensas]
  id_pontos_acumulados int [pk, ref: > Aplicativo_Movel.id_pontos_acumulados]
}

