package
{
import flash.display.MovieClip; import Card;
import miki; import duck;
import flash.events.MouseEvent; import animal; import josuke;import jotaro;import jolyne;import dio;
import twityface;
public class MemoryGame extends MovieClip
{
private var _card:Card; private var _miki:miki; private var _duck:duck; private var _cardX:Number; private var _cardY:Number; private var _firstCard:*;
private var _totalMatches:Number; private var _currentMatches:Number; private var _animal:animal;private var _jotaro:jotaro;private var _josuke:josuke;private var _jolyne:jolyne;private var _dio:dio;
private var _twityface:twityface; private var _cards:Array;
public function MemoryGame()
{
_totalMatches = 8;
_currentMatches = 0;
_cards = new Array(); createCards();
}
private function createCards():void
{
_cardX = 45;
_cardY = 31;
for(var i:Number = 0; i < 2; i++)
{
_card = new Card(); addChild(_card);
_miki = new miki();
_card.setType(_miki);
_card.x = _cardX;
_card.y = _cardY;
_cardX += _card.width + 50;
_card.addEventListener(MouseEvent.CLICK, checkCards);
_cards.push(_card);
}
randomizeCards(_cards);

for(var j:Number = 0; j < 2; j++)
{
_card = new Card(); addChild(_card);
_duck = new duck();
_card.setType(_duck);
_card.x = _cardX;
_card.y = _cardY;
_cardX += _card.width + 50;
_card.addEventListener(MouseEvent.CLICK, checkCards);
_cards.push(_card);
}
randomizeCards(_cards);

for(var m:Number = 0; m < 2; m++)
{
_card = new Card(); addChild(_card);
_josuke = new josuke();
_card.setType(_josuke);
_card.x = _cardX;
_card.y = _cardY;
_cardX += _card.width + 50;
_card.addEventListener(MouseEvent.CLICK, checkCards);
_cards.push(_card);
}
randomizeCards(_cards);

for(var o:Number = 0; o < 2; o++)
{
_card = new Card(); addChild(_card);
_jolyne = new jolyne();
_card.setType(_jolyne);
_card.x = _cardX;
_card.y = _cardY;
_cardX += _card.width + 50;
_card.addEventListener(MouseEvent.CLICK, checkCards);
_cards.push(_card);
}
randomizeCards(_cards);
_cardX = 45;
_cardY += _card.height + 50; for(var k:Number = 0; k < 2; k++)
{
_card = new Card(); addChild(_card);
_animal = new animal();
_card.setType(_animal);
_card.x = _cardX;
_card.y = _cardY;
_cardX += _card.width + 50;
_card.addEventListener(MouseEvent.CLICK, checkCards);
_cards.push(_card);
}
randomizeCards(_cards);
for(var l:Number = 0; l < 2; l++)
{
_card = new Card(); addChild(_card);
_twityface = new twityface();
_card.setType(_twityface);
_card.x = _cardX;
_card.y = _cardY;
_cardX += _card.width + 50;
_card.addEventListener(MouseEvent.CLICK, checkCards);
_cards.push(_card);
}
randomizeCards(_cards);

for(var n:Number = 0; n < 2; n++)
{
_card = new Card(); addChild(_card);
_jotaro = new jotaro();
_card.setType(_jotaro);
_card.x = _cardX;
_card.y = _cardY;
_cardX += _card.width + 50;
_card.addEventListener(MouseEvent.CLICK, checkCards);
_cards.push(_card);
}
randomizeCards(_cards);

for(var p:Number = 0; p < 2; p++)
{
_card = new Card(); addChild(_card);
_dio = new dio();
_card.setType(_dio);
_card.x = _cardX;
_card.y = _cardY;
_cardX += _card.width + 50;
_card.addEventListener(MouseEvent.CLICK, checkCards);
_cards.push(_card);
}
randomizeCards(_cards);
}
private function checkCards(event:MouseEvent):void
{
event.currentTarget.removeEventListener(MouseEvent.CLICK, checkCards); if(_firstCard == undefined)
{
_firstCard = event.currentTarget;
}
else if(String(_firstCard._type) == String(event.currentTarget._type))
{
trace("match!");
_firstCard = undefined;
_currentMatches ++; if(_currentMatches >= _totalMatches)
{
trace("YOU WIN!!!!!!");
}
}
else
{
trace("wrong!");
_firstCard.gotoAndPlay("flipBack"); event.currentTarget.gotoAndPlay("flipBack");
_firstCard.addEventListener(MouseEvent.CLICK, checkCards); event.currentTarget.addEventListener(MouseEvent.CLICK, checkCards);
_firstCard = undefined;
}
}
private function randomizeCards(cards:Array):void
{
var randomCard1:Number;
var randomCard2:Number; var card1X:Number;
var card1Y:Number;
for(var i:Number = 0; i < 10; i++)
{
 
randomCard1 = Math.floor(Math.random() * cards.length); randomCard2 = Math.floor(Math.random() * cards.length); card1X = cards[randomCard1].x;
card1Y = cards[randomCard1].y; cards[randomCard1].x = cards[randomCard2].x; cards[randomCard1].y = cards[randomCard2].y; cards[randomCard2].x = card1X; cards[randomCard2].y = card1Y;



}
}	}}
 
