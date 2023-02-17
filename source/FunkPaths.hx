package;

class FunkPaths
{
    public static function grabImage(image:String)
    {
        return 'assets/images/$image.png';
    }

    public static function grabMusic(song:String)
    {
        return 'assets/music/$song';
    }

    public static function grabSound(sound:String)
    {
        return 'assets/sounds/$sound';
    }

    public static function grabFont(font:String)
    {
        return 'assets/fonts/$font';
    }
}