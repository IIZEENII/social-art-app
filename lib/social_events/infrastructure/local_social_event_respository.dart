import 'package:dartz/dartz.dart';
import 'package:socialart/shared/domain/failures/failure.dart';
import 'package:socialart/social_events/domain/social_event_repository.dart';
import 'package:socialart/social_events/domain/social_event.dart';

class LocalSocialEventRespository implements SocialEventRepository {
  final List<SocialEvent> _socialEvents = [
    SocialEvent(
      name: 'Event',
      imageURL:
          'https://mixmag.net/assets/uploads/images/_fullX2/dance-music-sustainbility-festivals-events.jpg',
      location: 'Paseo de montejo',
      date: 'Feb 02',
    ),
    SocialEvent(
      name: 'Event-2',
      imageURL:
          'https://images.squarespace-cdn.com/content/v1/6226e0afc9720e0c8d606cba/33cf0565-0763-4cd6-82f9-5545d86a3ab7/HypeHotel2013.jpeg',
      location: 'Paseo de montejo',
      date: 'Feb 02',
    ),
    SocialEvent(
      name: 'Event-3',
      imageURL:
          'https://i0.wp.com/www.fashionmeetsmusic.com/wp-content/uploads/2022/03/hanny-naibaho-aWXVxy8BSzc-unsplash-min.jpg?resize=640%2C427&ssl=1',
      location: 'Paseo de montejo',
      date: 'Feb 02',
    ),
  ];

  @override
  Future<Either<Failure, void>> create(SocialEvent socialEvent) async {
    await Future.delayed(const Duration(seconds: 4));
    _socialEvents.add(socialEvent);
    return right(null);
  }

  @override
  Future<Either<Failure, List<SocialEvent>>> getAll() async {
    await Future.delayed(const Duration(seconds: 4));
    return right(_socialEvents);
  }
}
