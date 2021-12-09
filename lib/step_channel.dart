import 'package:grpc/grpc.dart';

class StepChannel {
  static ClientChannel? _chnl;

  static ClientChannel channel() {
    _chnl ??= ClientChannel(
      'localhost',
      port: 50051,
      options: ChannelOptions(
        credentials: const ChannelCredentials.insecure(),
        codecRegistry: CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
      ),
    );
    return _chnl!;
  }
}
