import 'package:customwidget/category.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


const _rowHeight = 100.0;
final _borderRadius = BorderRadius.circular(_rowHeight/2);

class CategoryTile extends StatelessWidget {
  final Kategori zategory;
  final ValueChanged<Kategori> onTap;

  const CategoryTile({Key key, this.zategory, this.onTap}) : assert(Kategori != null), super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        height: _rowHeight,
        child: InkWell(
          borderRadius: _borderRadius,
          highlightColor: zategory.warna['highlight'],
          splashColor: zategory.warna['splash'],
          onTap: () => onTap(zategory),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Image.asset(zategory.ikon),
                ),
                Center(
                  child: Text(
                    zategory.nama,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline,
                  ),
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}