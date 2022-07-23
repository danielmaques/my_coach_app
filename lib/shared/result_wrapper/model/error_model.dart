class ErrorModel {
  String codigo;
  String titulo;
  String mensagem;

  ErrorModel({required this.codigo, required this.titulo, required this.mensagem});

  factory ErrorModel.fromJson(Map<String, dynamic> json) => ErrorModel(
        codigo: json['codigo'] as String,
        titulo: json['titulo'] as String,
        mensagem: json['mensagem'] as String,
      );

  Map<String, dynamic> toJson() => {
        'codigo': codigo,
        'titulo': titulo,
        'mensagem': mensagem,
      };
}
