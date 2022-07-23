class ApiItemErrorModel {
  String codigo;
  String titulo;
  String mensagem;

  ApiItemErrorModel({
    required this.titulo,
    required this.mensagem,
    this.codigo = '',
  });

  factory ApiItemErrorModel.fromJson(Map<String, dynamic> json) => ApiItemErrorModel(
        titulo: json['titulo'] as String,
        mensagem: json['mensagem'] as String,
        codigo: json['codigo'] as String? ?? '',
      );

  Map<String, dynamic> toJson() => {
        'codigo': codigo,
        'titulo': titulo,
        'mensagem': mensagem,
      };
}
