class Service {
    String header, text1, text2, image;
    Service(this.header, this.image, this.text1, this.text2);
}

List<Service> serviceList = [
    Service(
        "Webinars",
        "assets/webinar.jpg",
        "Urgent webinar ?\nHurry, don't miss out!",
        "All your webinars are in here"),
    Service(
        "Meetings",
        "assets/meeting.png",
        "Got a meeting to attend?\nOr are you the host?",
        "We've got you covered"),
    Service(
        "Classrooms",
        "assets/classroom.jpeg",
        "Are you a student?\nBecause, there's no limit to learn.",
        "Join a classroom here"),
];
